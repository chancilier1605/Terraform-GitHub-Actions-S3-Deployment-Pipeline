output "s3_bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = arn:aws:s3:::terraform-s3-staticwebsite
}

output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = terraform-s3-staticwebsite
}

output "s3_bucket_domain_name" {
  description = "Domain name of the bucket"
  value       = terraform-s3-staticwebsite.bucket_domain_name
}

output "website_url" {
  description = "Website endpoint URL (if hosting enabled)"
  value       = var.enable_website_hosting ? aws_s3_bucket_website_configuration.app_bucket[0].website_endpoint : null
}

output "website_domain" {
  description = "Website domain (if hosting enabled)"
  value       = var.enable_website_hosting ? aws_s3_bucket_website_configuration.app_bucket[0].website_domain : null
}

output "regional_domain_name" {
  description = "Bucket regional domain name"
  value       = aws_s3_bucket.app_bucket.bucket_regional_domain_name
}

output "bucket_id" {
  description = "Bucket ID"
  value       = aws_s3_bucket.app_bucket.id
}

output "terraform_state_bucket" {
  description = "Name of the S3 bucket used for Terraform state"
  value       = local.terraform_state_bucket
}

output "dynamodb_lock_table" {
  description = "Name of the DynamoDB table used for Terraform state locking"
  value       = local.dynamodb_lock_table
}

locals {
  terraform_state_bucket = "your-terraform-state-bucket" # Replace with your actual bucket name
  dynamodb_lock_table   = "terraform-locks"
}
