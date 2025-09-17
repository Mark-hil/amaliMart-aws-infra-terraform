output "s3_bucket_name" {
  description = "The name of the S3 bucket for storing Terraform state"
  value       = aws_s3_bucket.terraform_state.id
}

output "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  value       = aws_dynamodb_table.terraform_locks.name
}

output "iam_policy_arn" {
  description = "The ARN of the IAM policy for state access"
  value       = aws_iam_policy.terraform_state_access.arn
}
