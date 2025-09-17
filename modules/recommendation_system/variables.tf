variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, staging, prod)"
  type        = string
}

variable "db_host" {
  description = "Database host address"
  type        = string
}

variable "db_port" {
  description = "Database port number"
  type        = number
  default     = 3306
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = ""
}

variable "db_user" {
  description = "Database username"
  type        = string
  default     = ""
}

variable "db_password" {
  description = "Database password"
  type        = string
  default     = ""
  sensitive   = true
}

variable "frontend_subdomain" {
  description = "Frontend subdomain for CORS configuration"
  type        = string
  default     = "amalimart"
}

variable "domain_name" {
  description = "Domain name for CORS configuration"
  type        = string
  default     = "noblesse.site"
}

variable "secrets_arn" {
  description = "ARN of the AWS Secrets Manager secret containing database credentials"
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "ecs_cluster_id" {
  description = "ID of the ECS cluster"
  type        = string
}

variable "alb_target_group_arn" {
  description = "ARN of the ALB target group"
  type        = string
}

variable "alb_security_group_id" {
  description = "ID of the ALB security group"
  type        = string
}

variable "recommendation_image" {
  description = "Docker image for the recommendation service"
  type        = string
}

variable "recommendation_port" {
  description = "Port on which the recommendation service runs"
  type        = number
  default     = 8001
}

variable "recommendation_cpu" {
  description = "CPU units for the recommendation service"
  type        = string
  default     = "256"
}

variable "recommendation_memory" {
  description = "Memory in MB for the recommendation service"
  type        = string
  default     = "512"
}

variable "recommendation_desired_count" {
  description = "Number of recommendation service tasks to run"
  type        = number
  default     = 1
}

variable "secrets_access_policy_arn" {
  description = "ARN of the policy that grants access to secrets"
  type        = string
  default     = ""
}

variable "task_role_arn" {
  description = "ARN of the IAM role for the ECS task"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
