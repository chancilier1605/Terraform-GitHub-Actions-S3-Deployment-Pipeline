output "s3_bucket_name" {
  description = "Name of the deployed S3 bucket"
  value       = terraform-s3-staticwebsite
}

output "website_url" {
  description = "S3 website endpoint (if enabled)"
  value       = try(aws_s3_bucket_website_configuration.app_bucket[0].website_endpoint, null)
}

# Critical for GitHub Actions deployment
output "bucket_arn" {
  description = "ARN of the S3 bucket for IAM permissions"
  value       = arn:aws:s3:::terraform-s3-staticwebsite
}
