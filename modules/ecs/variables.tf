variable "project_name" { type = string }
variable "vpc_id" { type = string }
variable "subnet_ids" { type = list(string) }

variable "alb_security_group_id" {
  type    = string
  default = null
}

variable "target_group_arn" {
  type    = string
  default = null
}

variable "container_name" { type = string }
variable "container_image" { type = string }
variable "container_port" { type = number }
variable "cpu" { type = number }
variable "memory" { type = number }
variable "desired_count" { type = number }
variable "region" { type = string }
