locals {
  control_count = 1
  compute_count = 1
  rg_name       = "test"
  location      = "westeurope"
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
    provider "azurerm" {
      features{}
    } 
  EOF 
}
