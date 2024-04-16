terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
    }
  }
}

provider "tfe" {
  token = var.token
}

module "organization" {
  source = "./modules/organization"

  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
}
