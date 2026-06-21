terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"   # ✅ older stable
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = "ap-south-1"
}

# -----------------------------
# VPC Module
# -----------------------------
module "vpc" {
  source = "./vpc"

  vpc_cidr           = var.vpc_cidr
  vpc_name           = var.vpc_name
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone  = var.availability_zone
}

# -----------------------------
module "s3" {
  source      = "./s3"
  bucket_name = var.bucket_name
  environment = var.environment   # ✅ REQUIRED
}
# -----------------------------
# DynamoDB Module
# -----------------------------
module "dynamodb" {
  source = "./dynamodb"

  table_name   = var.table_name
  billing_mode = var.billing_mode
}

# -----------------------------
# EC2 Module
# -----------------------------
module "ec2" {
  source = "./ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type

  subnet_id          = module.vpc.subnet_id
  security_group_ids = [module.vpc.sg_id]

  iam_instance_profile = var.iam_instance_profile
  user_data            = var.user_data

  instance_name = var.instance_name
  environment   = var.environment
}