# Critical for GitHub Actions deployment
output "bucket_arn" {
  description = "ARN of the S3 bucket for IAM permissions"
  value       = arn:aws:iam::002184381968:role/GitHubActionDeployRole
}
