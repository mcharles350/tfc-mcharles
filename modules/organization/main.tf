data "tfe_organization" "my_organization" {
  name = var.tfc_organization_name
}


resource "tfe_variable_set" "aws_credentials" {
  name         = "AWS C"
  description  = "Variable set applied to all workspaces."
  global       = true
  organization = data.tfe_organization.my_organization.name
}

resource "tfe_variable" "aws_access_key" {
  key             = "AWS_ACCESS_KEY_ID"
  value           = var.aws_access_key
  category        = "env"
  description     = "AWS Access Key"
  variable_set_id = tfe_variable_set.aws_credentials.id
}

resource "tfe_variable" "aws_secret_key" {
  key             = "AWS_SECRET_ACCESS_KEY"
  value           = var.aws_secret_key
  category        = "env"
  description     = "AWS Secret Key"
  variable_set_id = tfe_variable_set.aws_credentials.id
}
