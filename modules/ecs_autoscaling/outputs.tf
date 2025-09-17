output "cpu_policy_arn" {
  description = "ARN of the CPU target tracking policy"
  value       = aws_appautoscaling_policy.cpu.arn
}

output "memory_policy_arn" {
  description = "ARN of the memory target tracking policy"
  value       = aws_appautoscaling_policy.memory.arn
}

output "cpu_high_alarm_arn" {
  description = "ARN of the high CPU utilization alarm"
  value       = aws_cloudwatch_metric_alarm.cpu_high.arn
}

output "memory_high_alarm_arn" {
  description = "ARN of the high memory utilization alarm"
  value       = aws_cloudwatch_metric_alarm.memory_high.arn
}

output "cpu_low_alarm_arn" {
  description = "ARN of the low CPU utilization alarm"
  value       = aws_cloudwatch_metric_alarm.cpu_low.arn
}

output "memory_low_alarm_arn" {
  description = "ARN of the low memory utilization alarm"
  value       = aws_cloudwatch_metric_alarm.memory_low.arn
}
