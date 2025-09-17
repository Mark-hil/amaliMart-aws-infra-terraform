output "ecs_security_group_id" {
  description = "Security group ID of the ECS tasks for the recommendation service"
  value       = aws_security_group.recommendation_sg.id
}

output "recommendation_security_group_id" {
  description = "(Deprecated) Use ecs_security_group_id instead. Security group ID of the recommendation service"
  value       = aws_security_group.recommendation_sg.id
}

output "recommendation_task_definition_arn" {
  description = "ARN of the recommendation task definition"
  value       = aws_ecs_task_definition.recommendation.arn
}

output "recommendation_service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.recommendation.name
}

output "recommendation_service_id" {
  description = "ID of the ECS service"
  value       = aws_ecs_service.recommendation.id
}

output "recommendation_task_execution_role_arn" {
  description = "ARN of the task execution role"
  value       = aws_iam_role.recommendation_exec.arn
}
