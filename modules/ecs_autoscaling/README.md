# AWS ECS Auto Scaling Module

This module implements auto-scaling for AWS ECS services using Application Auto Scaling. It provides both CPU and memory-based target tracking scaling policies.

## Features

- CPU-based target tracking scaling
- Memory-based target tracking scaling
- Configurable minimum and maximum task counts
- Configurable scale-out and scale-in cooldown periods
- CloudWatch alarms for scale-out and scale-in events
- Supports ECS Fargate services

## Configuration

### Required Variables

```hcl
variable "service_name" {
  description = "Name of the ECS service to scale"
  type        = string
}

variable "cluster_name" {
  description = "Name of the ECS cluster containing the service"
  type        = string
}

variable "cpu_target_utilization" {
  description = "Target CPU utilization percentage for scaling"
  type        = number
  default     = 30
}

variable "memory_target_utilization" {
  description = "Target memory utilization percentage for scaling"
  type        = number
  default     = 50
}

variable "min_capacity" {
  description = "Minimum number of tasks to run"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "Maximum number of tasks to run"
  type        = number
  default     = 3
}

variable "scale_out_cooldown" {
  description = "Seconds to wait after a scale out before allowing another scaling activity"
  type        = number
  default     = 300
}

variable "scale_in_cooldown" {
  description = "Seconds to wait after a scale in before allowing another scaling activity"
  type        = number
  default     = 300
}

variable "region" {
  description = "AWS region where the ECS service is deployed"
  type        = string
}
```

### Output Values

```hcl
output "cpu_policy_arn" {
  description = "ARN of the CPU target tracking scaling policy"
  value       = aws_appautoscaling_policy.cpu.arn
}

output "memory_policy_arn" {
  description = "ARN of the memory target tracking scaling policy"
  value       = aws_appautoscaling_policy.memory.arn
}

output "cpu_high_alarm_arn" {
  description = "ARN of the CPU high utilization alarm"
  value       = aws_cloudwatch_metric_alarm.cpu_high.arn
}

output "cpu_low_alarm_arn" {
  description = "ARN of the CPU low utilization alarm"
  value       = aws_cloudwatch_metric_alarm.cpu_low.arn
}

output "memory_high_alarm_arn" {
  description = "ARN of the memory high utilization alarm"
  value       = aws_cloudwatch_metric_alarm.memory_high.arn
}

output "memory_low_alarm_arn" {
  description = "ARN of the memory low utilization alarm"
  value       = aws_cloudwatch_metric_alarm.memory_low.arn
}
```

## Scaling Behavior

- **Scale Out**: When either CPU utilization exceeds `cpu_target_utilization` or memory utilization exceeds `memory_target_utilization`, the service will scale up to the next available capacity level (up to `max_capacity`).
- **Scale In**: When both CPU utilization is below `cpu_target_utilization * 0.8` AND memory utilization is below `memory_target_utilization * 0.8` for `scale_in_cooldown` seconds, the service will scale down to the previous capacity level (down to `min_capacity`).

## Example Usage

```hcl
module "frontend_autoscaling" {
  source = "./modules/ecs_autoscaling"
  
  service_name = "${var.project_name}-svc"
  cluster_name = "${var.project_name}-cluster"
  cpu_target_utilization = 30
  memory_target_utilization = 50
  min_capacity = var.desired_count
  max_capacity = 2
  scale_out_cooldown = 300
  scale_in_cooldown = 300
  region = var.region

  # Add explicit dependency on ECS service
  depends_on = [
    module.ecs
  ]
}

module "backend_autoscaling" {
  source = "./modules/ecs_autoscaling"
  
  service_name = "${var.project_name}-backend-svc"
  cluster_name = "${var.project_name}-cluster"
  cpu_target_utilization = 30
  memory_target_utilization = 50
  min_capacity = 1
  max_capacity = 3
  scale_out_cooldown = 300
  scale_in_cooldown = 300
  region = var.region

  # Add explicit dependency on backend service
  depends_on = [
    module.backend
  ]
}
```

## Monitoring

The module creates CloudWatch alarms that trigger on:
- CPU utilization above `cpu_target_utilization` (scale out)
- CPU utilization below `cpu_target_utilization * 0.8` (scale in)
- Memory utilization above `memory_target_utilization` (scale out)
- Memory utilization below `memory_target_utilization * 0.8` (scale in)

You can monitor these alarms in the AWS CloudWatch console or through CloudWatch metrics for:
- `AWS/ECS` namespace
- `CPUUtilization` metric
- `MemoryUtilization` metric

## Best Practices

1. Set appropriate target utilization thresholds based on your application's resource requirements
2. Ensure `max_capacity` is set to a reasonable value to prevent excessive scaling
3. Consider the application's startup time when setting `scale_out_cooldown`
4. Set `scale_in_cooldown` long enough to prevent rapid scale-in after a scale-out event
5. Monitor CloudWatch metrics and adjust thresholds as needed based on actual usage patterns
