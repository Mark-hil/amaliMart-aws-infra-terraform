variable "domain_name" {
  description = "The domain name for the hosted zone (e.g., example.com)"
  type        = string
}

variable "frontend_subdomain" {
  description = "Subdomain for the frontend (e.g., app.example.com)"
  type        = string
}

variable "backend_subdomain" {
  description = "Subdomain for the backend API (e.g., api.example.com)"
  type        = string
}

variable "alb_dns_name" {
  description = "The DNS name of the load balancer"
  type        = string
}

variable "alb_zone_id" {
  description = "The canonical hosted zone ID of the load balancer"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Environment (e.g., dev, staging, prod)"
  type        = string
}

variable "recommendation_subdomain" {
  description = "Subdomain for the recommendation API (e.g., recsys.example.com)"
  type        = string
}
