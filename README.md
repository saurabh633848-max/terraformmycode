Terraform AWS Infrastructure (Modular Project) 

Overview 

This project uses Terraform to provision AWS infrastructure in a modular and reusable way. It automates the creation of VPC, EC2, S3, and DynamoDB resources. 

Why This Project 

Manual infrastructure management is time-consuming and error-prone. Using Terraform (Infrastructure as Code) helps automate deployments, ensure consistency, and improve scalability. 

What We Created 

Modules created: 
- VPC: Networking components 
- EC2: Virtual servers 
- S3: Storage bucket with versioning 
- DynamoDB: NoSQL database 

Project Structure 

Application/ 
  modules/ 
    vpc/ 
    ec2/ 
    s3/ 
    dynamodb/ 
  main.tf 
  variables.tf 
  outputs.tf 
  terraform.tfvars 

How to Run 

1. cd C:\Application\modules 
2. terraform init 
3. terraform validate 
4. terraform plan 
5. terraform apply 
6. terraform destroy (optional) 
