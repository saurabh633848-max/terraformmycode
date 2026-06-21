variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "versioning_enabled" {
  description = "Enable versioning on S3 bucket"
  type        = bool
  default     = false
}

variable "environment" {
  description = "Environment name (dev/prod)"
  type        = string
}