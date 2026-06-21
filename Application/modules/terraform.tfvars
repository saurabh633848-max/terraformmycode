# ----------------------------------
# EC2 Configuration
# ----------------------------------

ami_id        = "ami-0c55b159cbfafe1f0"
instance_type = "t3.micro"

# ----------------------------------
# IAM Configuration
# ----------------------------------

iam_instance_profile = "cpmg-qa-aws-ec2-role"

# ----------------------------------
# S3 Configuration (Key Storage Bucket)
# ----------------------------------

bucket_name = "my-terraform-state-bucket-12345"

# ----------------------------------
# EC2 User Data Script
# ----------------------------------

user_data = <<-EOF
#!/bin/bash
yum update -y
echo "Hello from cpmg-qa-aws" > /home/ec2-user/hello.txt
EOF

# ----------------------------------
# Naming & Environment
# ----------------------------------

instance_name = "cpmg-qa-aws-ec2"
environment   = "qa"

# ----------------------------------
# VPC Configuration
# ----------------------------------

vpc_cidr = "10.0.0.0/16"
vpc_name = "cpmg-qa-aws"

# ----------------------------------
# Subnet Configuration
# ----------------------------------

public_subnet_cidr = "10.0.1.0/24"
availability_zone  = "ap-south-1a"

# ----------------------------------
# DynamoDB Configuration (State Lock)
# ----------------------------------

table_name   = "cpmg-qa-aws-tf-lock"
billing_mode = "PAY_PER_REQUEST"