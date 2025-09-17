output "hosted_zone_id" {
  description = "The ID of the hosted zone"
  value       = data.aws_route53_zone.main.zone_id
}

output "frontend_dns_name" {
  description = "The DNS name for the frontend"
  value       = aws_route53_record.frontend.fqdn
}

output "backend_dns_name" {
  description = "The DNS name for the backend API"
  value       = aws_route53_record.backend.fqdn
}

output "recommendation_dns_name" {
  description = "The DNS name for the recommendation API"
  value       = aws_route53_record.recommendation.fqdn
}