terraform {
  required_version = ">= 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

# Generate a local file with the backend configuration for initial setup
resource "local_file" "backend_config" {
  filename = "backend.hcl"
  content = <<-EOT
    bucket         = "${var.project_name}-terraform-state-${data.aws_caller_identity.current.account_id}"
    key            = "${var.environment}/terraform.tfstate"
    region         = "${var.region}"
    dynamodb_table = "${var.project_name}-terraform-locks"
    encrypt        = true
  EOT
}

data "aws_caller_identity" "current" {}

# Reference existing secret in AWS Secrets Manager
data "aws_secretsmanager_secret" "app_secrets" {
  name = "${var.environment}/amalimart-platform/backend"
}

# IAM policy for accessing the secret
data "aws_iam_policy_document" "secrets_access" {
  statement {
    effect = "Allow"
    actions = [
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret"
    ]
    resources = [data.aws_secretsmanager_secret.app_secrets.arn]
  }
}

resource "aws_iam_policy" "secrets_access" {
  name        = "${var.project_name}-secrets-access"
  description = "Policy to access application secrets in AWS Secrets Manager"
  policy      = data.aws_iam_policy_document.secrets_access.json
}

# Create S3 bucket and DynamoDB table for remote state
module "remote_state" {
  source      = "./modules/remote-state"
  project_name = var.project_name
  environment = var.environment
}

provider "aws" {
  region = var.region
}

module "network" {
  source       = "./modules/network"
  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
}

# Use existing ACM certificate
module "acm" {
  source            = "./modules/acm"
  project_name      = var.project_name
  domain_name       = var.domain_name
  create_certificate = false  # Use existing certificate
  certificate_arn   = var.certificate_arn
}

module "alb" {
  source                = "./modules/alb"
  project_name          = var.project_name
  vpc_id                = module.network.vpc_id
  public_subnet_ids     = module.network.public_subnet_ids
  container_port        = var.container_port
  backend_port          = 8089
  frontend_subdomain    = var.frontend_subdomain
  backend_subdomain     = var.backend_subdomain
  recommendation_subdomain = var.recommendation_subdomain
  domain_name           = var.domain_name
  certificate_arn       = module.acm.certificate_arn
}

module "route53" {
  source             = "./modules/route53"
  domain_name        = var.domain_name
  frontend_subdomain = "${var.frontend_subdomain}.${var.domain_name}"
  backend_subdomain  = "${var.backend_subdomain}.${var.domain_name}"
  recommendation_subdomain = "${var.recommendation_subdomain}.${var.domain_name}"
  alb_dns_name       = module.alb.alb_dns_name
  alb_zone_id        = module.alb.alb_zone_id
  project_name       = var.project_name
  environment        = var.environment
}

module "ecs" {
  source                = "./modules/ecs"
  project_name          = var.project_name
  vpc_id                = module.network.vpc_id
  subnet_ids            = module.network.public_subnet_ids
  alb_security_group_id = module.alb.alb_security_group_id
  target_group_arn      = module.alb.frontend_target_group_arn

  container_name  = var.container_name
  container_image = var.container_image
  container_port  = var.container_port
  cpu             = var.cpu
  memory          = var.memory
  desired_count   = var.desired_count
  region          = var.region

  # Add explicit dependency on ALB
  depends_on = [
    module.alb
  ]
}

# Frontend Auto-scaling
module "frontend_autoscaling" {
  source = "./modules/ecs_autoscaling"
  
  service_name = "${var.project_name}-svc"
  cluster_name = "${var.project_name}-cluster"
  cpu_target_utilization = 80  # Lowered from 70%
  memory_target_utilization = 80  # Lowered from 80%
  min_capacity = var.desired_count
  max_capacity = 2
  scale_out_cooldown = 300
  scale_in_cooldown = 300
  region = var.region

  # Add explicit dependency on ECS service
  depends_on = [
    module.ecs
  ]
}

module "backend" {

  source              = "./modules/backend"
  project_name        = var.project_name
  vpc_id              = module.network.vpc_id
  private_subnet_ids  = module.network.private_subnet_ids
  vpc_cidr            = var.vpc_cidr

  backend_image         = var.backend_image
  alb_target_group_arn  = module.alb.backend_target_group_arn
  alb_security_group_id = module.alb.alb_security_group_id
  backend_port          = 8089
  backend_cpu           = 512
  backend_memory        = 1024
  backend_desired_count = 1
  # Connect to Secrets Manager
  secrets_arn             = data.aws_secretsmanager_secret.app_secrets.arn
  secrets_access_policy_arn = aws_iam_policy.secrets_access.arn
  
  # Non-sensitive environment variables
  backend_env = merge(var.backend_env, {
    # Database configuration
    DB_URL       = "jdbc:mysql://${module.rds.db_address}/amalimart?createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
    SPRING_DATASOURCE_URL  = "jdbc:mysql://${module.rds.db_address}/amalimart?createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
    SPRING_DATASOURCE_DRIVER_CLASS_NAME = "com.mysql.cj.jdbc.Driver",
    SPRING_JPA_HIBERNATE_DDL_AUTO = "update",
    
    # Server configuration
    SERVER_PORT = "8089",
    SERVER_FORWARD_HEADERS_STRATEGY = "native",
    SERVER_TOMCAT_INTERNAL_PROXIES = ".*",
    
    # Application URLs
    APP_BASE_URL      = "https://${var.backend_subdomain}.${var.domain_name}",
    APP_FRONTEND_URL  = "https://${var.frontend_subdomain}.${var.domain_name}",
    FACEBOOK_REDIRECT_URI = "https://${var.backend_subdomain}.${var.domain_name}/login/oauth2/code/facebook",
    
    # Email configuration (non-sensitive parts)
    EMAIL_HOST = var.backend_env.EMAIL_HOST,
    EMAIL_PORT = var.backend_env.EMAIL_PORT,
    APP_EMAIL = var.backend_env.APP_EMAIL,
    EMAIL_FROM = var.backend_env.EMAIL_FROM,
    EMAIL_AUTH = var.backend_env.EMAIL_AUTH,
    EMAIL_STARTTLS = var.backend_env.EMAIL_STARTTLS,
    JWT_ACCESS_EXPIRATION = var.backend_env.JWT_ACCESS_EXPIRATION,
    JWT_REFRESH_EXPIRATION = var.backend_env.JWT_REFRESH_EXPIRATION,
    JWT_EXPIRATION = var.backend_env.JWT_EXPIRATION,
    REDIS_HOST = "localhost",
    REDIS_DB = var.backend_env.REDIS_DB,
    AWS_S3_CLOUDFRONT_URL = var.backend_env.AWS_S3_CLOUDFRONT_URL,
    SPRING_PROFILES_ACTIVE = "prod",
    SPRING_DATA_REDIS_HOST = "localhost",
    SERVER_ERROR_INCLUDE_STACKTRACE = "ALWAYS",
    SPRINGDOC_SWAGGER_UI_USE_HTTPS_REFERRER = "true",
    SPRINGDOC_SWAGGER_UI_URLS_0_URL = "/v3/api-docs",
    SPRINGDOC_SWAGGER_UI_URLS_0_NAME = "${var.project_name}-api",
    SPRINGDOC_SWAGGER_UI_OAUTH_REDIRECT_URL = "/swagger-ui/oauth2-redirect.html",
    SPRINGDOC_SWAGGER_UI_CONFIG_URL = "/v3/api-docs/swagger-config",
    SPRING_MVC_CORS_ALLOWED_ORIGINS = "https://${var.frontend_subdomain}.${var.domain_name}",
    CORS_ALLOWED_ORIGINS = "https://${var.frontend_subdomain}.${var.domain_name}",
    CORS_ALLOWED_METHODS = "GET,POST,PUT,DELETE,OPTIONS,HEAD",
    CORS_ALLOWED_HEADERS = "*",
    CORS_ALLOW_CREDENTIALS = "true",
    CORS_MAX_AGE = "3600",
    SPRING_DATA_REDIS_PORT = var.backend_env.REDIS_PORT,
    SPRING_REDIS_EMBEDDED_ENABLED = "false",
    LOGGING_LEVEL_ROOT = "DEBUG",
    AWS_REGION = var.backend_env.AWS_REGION,
    GOOGLE_SCOPE = var.backend_env.GOOGLE_SCOPE,
    GOOGLE_REDIRECT_URI = "https://${var.backend_subdomain}.${var.domain_name}/login/oauth2/code/google",
    AWS_S3_BUCKET_NAME = var.backend_env.AWS_S3_BUCKET_NAME,
    AWS_S3_REGION = var.backend_env.AWS_S3_REGION,
    AWS_S3_ENDPOINT = "https://s3.${var.backend_env.AWS_S3_REGION}.amazonaws.com",
    AWS_S3_BASE_URL = var.backend_env.AWS_S3_BASE_URL,
  })
  region              = var.region

  # Add explicit dependency on ALB
  depends_on = [
    module.alb
  ]
}

# Backend Auto-scaling
module "backend_autoscaling" {
  source = "./modules/ecs_autoscaling"
  
  service_name = "${var.project_name}-backend-svc"
  cluster_name = "${var.project_name}-cluster"
  cpu_target_utilization = 80  
  memory_target_utilization = 80
  min_capacity = 1
  max_capacity = 3
  scale_out_cooldown = 300
  scale_in_cooldown = 300
  region = var.region

  # Add explicit dependency on backend service
  depends_on = [
    module.backend
  ]
}

# Recommendation System Module
module "recommendation_system" {
  source = "./modules/recommendation_system"
  
  project_name     = var.project_name
  environment      = var.environment
  aws_region       = var.region
  vpc_id           = module.network.vpc_id
  private_subnet_ids = module.network.private_subnet_ids  # Fixed attribute name
  ecs_cluster_id   = module.backend.ecs_cluster_id  # Use the ECS cluster from backend module
  
  # ALB Configuration
  alb_target_group_arn = module.alb.recommendation_target_group_arn
  alb_security_group_id = module.alb.alb_security_group_id
  
  # Recommendation Service Configuration
  recommendation_image = var.recommendation_image
  recommendation_port = 8001  
  recommendation_cpu = "512"
  recommendation_memory = "1024"
  recommendation_desired_count = 1
  
  # CORS configuration
  frontend_subdomain = var.frontend_subdomain
  domain_name       = var.domain_name

  # Database Configuration
  db_host     = module.rds.db_address
  db_port     = 3306  # Default MySQL port
  db_name     = "amalimart"
  db_user     = ""  # Will be set via secrets manager
  db_password = ""  # Will be set via secrets manager
  secrets_arn = data.aws_secretsmanager_secret.app_secrets.arn  # Use the existing secret
  
  # IAM
  secrets_access_policy_arn = aws_iam_policy.secrets_access.arn
  task_role_arn = module.backend.ecs_task_role_arn  # Use task role from backend module
  
  tags = {
    Environment = var.environment
    Project     = var.project_name
    Service     = "recommendation"
  }
}

# Use existing secret in AWS Secrets Manager
module "secrets_manager" {
  source = "./modules/secrets_manager"
  
  environment = var.environment
  create_secret = false  # Use existing secret
  
  # db_username = var.backend_env.DB_USERNAME
  # db_password = var.backend_env.DB_PASSWORD
  
  # # Authentication
  # jwt_secret             = var.backend_env.JWT_SECRET
  # google_client_id       = var.backend_env.GOOGLE_CLIENT_ID
  # google_client_secret   = var.backend_env.GOOGLE_CLIENT_SECRET
  # facebook_client_id     = var.backend_env.FACEBOOK_CLIENT_ID
  # facebook_client_secret = var.backend_env.FACEBOOK_CLIENT_SECRET
  
  # # Email
  # app_email_password = var.backend_env.APP_EMAIL_PASSWORD
  
  # # AWS Credentials
  # aws_access_key     = var.backend_env.AWS_ACCESS_KEY
  # aws_secret_key     = var.backend_env.AWS_SECRET_KEY
  # aws_s3_access_key  = var.backend_env.AWS_S3_ACCESS_KEY
  # aws_s3_secret_key  = var.backend_env.AWS_S3_SECRET_KEY
  # aws_sns_sender_id  = var.backend_env.AWS_SNS_SENDER_ID
}

module "rds" {
  source             = "./modules/rds"  
  project_name       = var.project_name
  vpc_id             = module.network.vpc_id
  private_subnet_ids = module.network.private_subnet_ids
  vpc_cidr           = var.vpc_cidr
  db_name            = "amalimart"
  environment        = var.environment

  # Database credentials
  db_username = var.backend_env.DB_USERNAME
  db_password = var.backend_env.DB_PASSWORD
}




# let store the rest of the secret in the the secret manager 