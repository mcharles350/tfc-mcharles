output "organization_name" {
  value = data.tfe_organization.my_organization.name
}

output "organization_email" {
  value = data.tfe_organization.my_organization.email
}

output "organization_id" {
  value = data.tfe_organization.my_organization.id
}
