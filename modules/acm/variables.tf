variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "domain_name" {
  type        = string
  description = "The root domain name ( noblesse.site)"
}

variable "create_certificate" {
  type        = bool
  default     = true
  description = "Whether to create a new ACM certificate. Set to false to use an existing certificate."
}

variable "certificate_arn" {
  type        = string
  default     = ""
  description = "The ARN of an existing ACM certificate to use. If empty and create_certificate is false, will try to find a certificate for the domain."
}
