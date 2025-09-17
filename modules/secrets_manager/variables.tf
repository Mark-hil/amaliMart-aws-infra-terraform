variable "environment" {
  description = "The environment (e.g., dev, staging, prod)"
  type        = string
}

variable "create_secret" {
  description = "Whether to create the secret. Set to false to use an existing secret."
  type        = bool
  default     = false
}

# Database
# variable "db_username" {
#   description = "Database username"
#   type        = string
#   sensitive   = true
# }

# variable "db_password" {
#   description = "Database password"
#   type        = string
#   sensitive   = true
# }

# # Authentication
# variable "jwt_secret" {
#   description = "JWT secret key"
#   type        = string
#   sensitive   = true
# }

# variable "google_client_id" {
#   description = "Google OAuth client ID"
#   type        = string
#   sensitive   = true
# }

# variable "google_client_secret" {
#   description = "Google OAuth client secret"
#   type        = string
#   sensitive   = true
# }

# variable "facebook_client_id" {
#   description = "Facebook OAuth client ID"
#   type        = string
#   sensitive   = true
# }

# variable "facebook_client_secret" {
#   description = "Facebook OAuth client secret"
#   type        = string
#   sensitive   = true
# }

# # Email
# variable "app_email_password" {
#   description = "Application email password"
#   type        = string
#   sensitive   = true
# }

# # AWS Credentials
# variable "aws_access_key" {
#   description = "AWS access key"
#   type        = string
#   sensitive   = true
# }

# variable "aws_secret_key" {
#   description = "AWS secret key"
#   type        = string
#   sensitive   = true
# }

# variable "aws_s3_access_key" {
#   description = "AWS S3 access key"
#   type        = string
#   sensitive   = true
# }

# variable "aws_s3_secret_key" {
#   description = "AWS S3 secret key"
#   type        = string
#   sensitive   = true
# }

# variable "aws_sns_sender_id" {
#   description = "AWS SNS sender ID"
#   type        = string
#   sensitive   = true
# }

# Optional: Secret rotation
# variable "rotation_lambda_arn" {
#   description = "ARN of the Lambda function for secret rotation (optional)"
#   type        = string
#   default     = ""
# }
