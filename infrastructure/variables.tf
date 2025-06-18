variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Application name (for resource naming)"
  type        = string
  default     = "myapp"
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
  default     = "dev"
}

variable "terraform_state_bucket" {
  description = "Existing S3 bucket for Terraform state"
  type        = string
  default     = "terraform-s3-staticwebsite" 
}
