# Check if secret exists
resource "aws_secretsmanager_secret" "app_secrets" {
  count = var.create_secret ? 1 : 0
  
  name        = "${var.environment}/amalimart-platform/backend"
  description = "Secrets for AmaliMart backend service"
  
  tags = {
    Name        = "amalimart-platform-backend-secrets"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

  # Prevent accidental deletion
  lifecycle {
    prevent_destroy = true
  }
}

# Data source to get existing secret
data "aws_secretsmanager_secret" "existing_secret" {
  count = var.create_secret ? 0 : 1
  name  = "${var.environment}/amalimart-platform/backend"
}

# Only create secret version if we're creating a new secret
# resource "aws_secretsmanager_secret_version" "app_secrets_version" {
#   count = var.create_secret ? 1 : 0
  
#   secret_id = aws_secretsmanager_secret.app_secrets[0].id
  
#   secret_string = jsonencode({
#     # Database
#     DB_USERNAME = var.db_username
#     DB_PASSWORD = var.db_password
    
#     # Authentication
#     JWT_SECRET            = var.jwt_secret
#     GOOGLE_CLIENT_ID      = var.google_client_id
#     GOOGLE_CLIENT_SECRET  = var.google_client_secret
#     FACEBOOK_CLIENT_ID    = var.facebook_client_id
#     FACEBOOK_CLIENT_SECRET= var.facebook_client_secret
    
#     # Email
#     APP_EMAIL_PASSWORD = var.app_email_password
    
#     # AWS Credentials
#     AWS_ACCESS_KEY     = var.aws_access_key
#     AWS_SECRET_KEY     = var.aws_secret_key
#     AWS_S3_ACCESS_KEY = var.aws_s3_access_key
#     AWS_S3_SECRET_KEY = var.aws_s3_secret_key
#     AWS_SNS_SENDER_ID = var.aws_sns_sender_id
#   })
# }

# IAM policy for ECS tasks to access this secret
resource "aws_iam_policy" "secrets_access" {
  name        = "${var.environment}-amalimart-secrets-access"
  description = "Policy to access AmaliMart backend secrets"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "secretsmanager:GetSecretValue",
          "secretsmanager:DescribeSecret"
        ]
        Resource = [
          var.create_secret ? aws_secretsmanager_secret.app_secrets[0].arn : data.aws_secretsmanager_secret.existing_secret[0].arn
        ]
      }
    ]
  })
}

# Outputs
# output "secrets_arn" {
#   description = "The ARN of the created secret"
#   value       = aws_secretsmanager_secret.app_secrets.arn
# }

# output "secrets_policy_arn" {
#   description = "The ARN of the IAM policy for accessing the secret"
#   value       = aws_iam_policy.secrets_access.arn
# }
