output "backend_service_name" { 
  value = aws_ecs_service.backend.name 
}

output "backend_sg_id" { 
  value = aws_security_group.backend_sg.id 
}

output "ecs_cluster_id" {
  value = aws_ecs_cluster.this.id
}

output "ecs_task_role_arn" {
  value = aws_iam_role.exec.arn
}
