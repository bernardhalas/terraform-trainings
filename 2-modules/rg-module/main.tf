# This module is used for session 3-Terragrunt

resource "azurerm_resource_group" "this" {
  name = var.name
  location = var.location
}
