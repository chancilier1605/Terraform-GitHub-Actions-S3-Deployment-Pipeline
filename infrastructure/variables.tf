variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Name of the application"
  type        = string
  default     = "my-app"
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
    Project     = "my-app"
  }
}

variable "enable_website_hosting" {
  description = "Enable S3 static website hosting"
  type        = bool
  default     = true
}

variable "index_document" {
  description = "Default index document for website"
  type        = string
  default     = "index.html"
}

variable "error_document" {
  description = "Default error document for website"
  type        = string
  default     = "error.html"
}

variable "enable_bucket_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "block_public_access" {
  description = "Block public access to the S3 bucket"
  type        = bool
  default     = false
}
