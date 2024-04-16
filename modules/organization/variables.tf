variable "tfc_organization_name" {
  type        = string
  description = "Name of the Terraform Cloud organization"
  default     = "generalsandbox"
}

variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
  sensitive   = true
}
