# EC2
variable "ami_id" {}
variable "instance_type" {}
variable "iam_instance_profile" {}
variable "user_data" {}
variable "instance_name" {}
variable "environment" {}

# VPC
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "public_subnet_cidr" {}
variable "availability_zone" {}

# S3
variable "bucket_name" {}

# DynamoDB
variable "table_name" {}
variable "billing_mode" {}