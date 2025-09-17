variable "service_name" {
  description = "Name of the ECS service to apply auto-scaling to"
  type        = string
}

variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "cpu_target_utilization" {
  description = "Target CPU utilization percentage for scaling"
  type        = number
  default     = 70
}

variable "memory_target_utilization" {
  description = "Target memory utilization percentage for scaling"
  type        = number
  default     = 80
}

variable "min_capacity" {
  description = "Minimum number of tasks"
  type        = number
  default     = 1
}

variable "max_capacity" {
  description = "Maximum number of tasks"
  type        = number
  default     = 3
}

variable "scale_out_cooldown" {
  description = "Cooldown period (in seconds) after scale-out"
  type        = number
  default     = 300
}

variable "scale_in_cooldown" {
  description = "Cooldown period (in seconds) after scale-in"
  type        = number
  default     = 300
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}
