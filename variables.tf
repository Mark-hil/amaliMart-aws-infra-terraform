# Input Variables
# ---------------------------------------------------------------------------

variable "project_name" {
  description = "Prefix for naming AWS resources"
  type        = string
  default     = "amalimart-app"
}

variable "environment" {
  description = "Environment (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "eu-west-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "container_name" {
  description = "Name of the container in the task definition"
  type        = string
  default     = "frontend"
}

variable "container_image" {
  description = "Docker image URI to run in ECS"
  type        = string
  default     = ""
}

variable "backend_image" {
  description = "Docker image for the backend service"
  type        = string
  default     = ""
}

variable "recommendation_image" {
  description = "Docker image for the recommendation service"
  type        = string
  default     = ""
}

variable "container_port" {
  description = "Port on which container listens"
  type        = number
  default     = 80
}

variable "certificate_arn" {
  description = "ARN of the ACM certificate for the domain"
  type        = string
  default     = ""
}

variable "cpu" {
  description = "CPU units for the ECS task"
  type        = number
  default     = 256
}

variable "memory" {
  description = "Memory (MiB) for the ECS task"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Number of ECS tasks to run"
  type        = number
  default     = 1
}

# Environment variables for backend application
variable "backend_env" {
  description = "Map of environment variables for backend container (.env values)"
  type        = map(string)
  sensitive   = true
  default     = {}
}

# Route53 Variables
variable "domain_name" {
  description = "Base domain name for the application"
  type        = string
  default     = "noblesse.site"
}

variable "frontend_subdomain" {
  description = "Subdomain for the frontend application"
  type        = string
  default     = "amalimart"
}

variable "backend_subdomain" {
  description = "Subdomain for the backend API"
  type        = string
  default     = "amalimart-api"
}

variable "recommendation_subdomain" {
  description = "Subdomain for the recommendation service"
  type        = string
  default     = "recsys"
}
