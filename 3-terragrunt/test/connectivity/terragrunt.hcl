include "root" {
  path   = find_in_parent_folders()
  expose = true
}

terraform {
  source = "git::https://github.com/bernardhalas/terraform-trainings.git//2-modules/network-module?ref=feature/add-terragrunt-session"
}

dependency resource-group {
  config_path  = "../resource-group"
  skip_outputs = true
}

inputs = {
  location            = include.root.locals.location
  resource_group_name = include.root.locals.rg_name
  name                = "k8s-network"
  subnet_count        = 2
}
