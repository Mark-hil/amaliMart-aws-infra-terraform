output "secret_arn" {
  description = "The ARN of the secret"
  value       = var.create_secret ? aws_secretsmanager_secret.app_secrets[0].arn : data.aws_secretsmanager_secret.existing_secret[0].arn
}

output "secret_name" {
  description = "The name of the secret"
  value       = var.create_secret ? aws_secretsmanager_secret.app_secrets[0].name : data.aws_secretsmanager_secret.existing_secret[0].name
}

output "secret_id" {
  description = "The ID of the secret"
  value       = var.create_secret ? aws_secretsmanager_secret.app_secrets[0].id : data.aws_secretsmanager_secret.existing_secret[0].id
}

# output "secret_version_id" {
#   description = "The unique identifier of the version of the secret"
#   value       = var.create_secret ? aws_secretsmanager_secret_version.app_secrets_version[0].version_id : null
# }

output "secrets_policy_arn" {
  description = "The ARN of the IAM policy for accessing the secret"
  value       = aws_iam_policy.secrets_access.arn
}
