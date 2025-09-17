# ---------------------------------------------------------------------------
# Outputs
# ---------------------------------------------------------------------------

output "alb_dns_name" {
  value       = module.alb.alb_dns_name
  description = "ALB DNS name"
}

output "alb_url" {
  value       = module.alb.alb_url
  description = "Public URL"
}

# Route53 Outputs
output "frontend_url" {
  value       = "https://${var.frontend_subdomain}.${var.domain_name}"
  description = "Frontend URL"
}

output "backend_url" {
  value       = "https://${var.backend_subdomain}.${var.domain_name}"
  description = "Backend API URL"
}

output "recommendation_url" {
  value       = "https://${var.recommendation_subdomain}.${var.domain_name}"
  description = "Recommendation API URL"
}

output "hosted_zone_id" {
  value       = module.route53.hosted_zone_id
  description = "Route53 Hosted Zone ID"
}
