variable "project_name" { type = string }
variable "vpc_id" { type = string }
variable "private_subnet_ids" { type = list(string) }
variable "vpc_cidr" { type = string }

variable "db_username" { type = string }
variable "db_password" { type = string }

variable "db_name" {
  description = "Initial database name to create"
  type        = string
  default     = null
}

variable "ecs_security_group_id" {
  description = "(Optional) Security group ID of the ECS tasks that need to access the database"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}
