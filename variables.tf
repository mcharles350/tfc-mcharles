variable "token" {
  type        = string
  description = "Token for Terraform Cloud API access"
  sensitive   = true
}

variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
  sensitive   = true
}
