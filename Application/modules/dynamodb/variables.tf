variable "table_name" {
  description = "Name of DynamoDB table for state locking"
  type        = string
}

variable "billing_mode" {
  description = "Billing mode for DynamoDB"
  type        = string
  default     = "PAY_PER_REQUEST"
}