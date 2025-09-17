output "alb_dns_name" { 
  value = aws_lb.this.dns_name 
}

output "alb_zone_id" {
  value = aws_lb.this.zone_id
}

output "alb_arn" {
  value = aws_lb.this.arn
}

output "alb_security_group_id" { 
  value = aws_security_group.alb_sg.id 
}

output "frontend_target_group_arn" { 
  value = aws_lb_target_group.frontend.arn 
}

output "backend_target_group_arn" { 
  value = aws_lb_target_group.backend.arn 
}

output "recommendation_target_group_arn" { 
  value = aws_lb_target_group.recommendation.arn 
}

output "https_listener_arn" {
  value = aws_lb_listener.https.arn
}

output "http_listener_arn" {
  value = aws_lb_listener.http.arn
}

output "alb_url" { 
  value = "https://${aws_lb.this.dns_name}" 
}

output "alb_http_url" { 
  value = "http://${aws_lb.this.dns_name}" 
}
