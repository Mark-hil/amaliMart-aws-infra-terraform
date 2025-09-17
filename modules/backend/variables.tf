variable "project_name" { type = string }
variable "vpc_id" { type = string }
variable "private_subnet_ids" { type = list(string) }
variable "vpc_cidr" { type = string }

variable "backend_image" { type = string }
variable "backend_port" { type = number }
variable "backend_cpu" { type = number }
variable "backend_memory" { type = number }
variable "backend_desired_count" { type = number }
variable "alb_target_group_arn" { type = string }

variable "alb_security_group_id" {
  description = "Security group ID of the ALB to allow traffic from"
  type        = string
}

variable "backend_env" {
  type    = map(string)
  default = {}
}
variable "region" { type = string }

# Redis sidecar defaults
variable "redis_image" {
  type    = string
  default = "redis:latest"
}

variable "redis_port" {
  type    = number
  default = 6379
}

# Secrets Manager integration
variable "secrets_arn" {
  description = "ARN of the AWS Secrets Manager secret containing application secrets"
  type        = string
  
  validation {
    condition     = can(regex("^arn:aws:secretsmanager:", var.secrets_arn))
    error_message = "The secrets_arn must be a valid AWS Secrets Manager ARN."
  }
}

variable "secrets_access_policy_arn" {
  description = "ARN of the IAM policy that grants access to the secrets"
  type        = string
  
  validation {
    condition     = can(regex("^arn:aws:iam::", var.secrets_access_policy_arn))
    error_message = "The secrets_access_policy_arn must be a valid IAM policy ARN."
  }
}
