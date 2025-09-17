variable "project_name" { 
  type = string 
  description = "The name of the project"
}

variable "vpc_id" { 
  type = string 
  description = "The VPC ID where the ALB will be created"
}

variable "public_subnet_ids" { 
  type = list(string) 
  description = "List of public subnet IDs for the ALB"
}

variable "container_port" { 
  type = number 
  description = "The port the frontend container listens on"
}

variable "backend_port" {
  type        = number
  default     = 8089
  description = "The port the backend container listens on"
}

variable "recommendation_port" {
  type        = number
  default     = 8001
  description = "The port the recommendation container listens on"
}

variable "frontend_subdomain" {
  type        = string
  description = "The frontend subdomain (amalimart.noblesse.site)"
}

variable "backend_subdomain" {
  type        = string
  description = "The backend subdomain (amalimart-api.noblesse.site)"
}

variable "domain_name" {
  type        = string
  description = "The root domain name (noblesse.site)"
}

variable "recommendation_subdomain" {
  type        = string
  description = "The recommendation service subdomain (recsys.noblesse.site)"
}

variable "certificate_arn" {
  type        = string
  description = "The ARN of the ACM certificate to use for HTTPS"
}
