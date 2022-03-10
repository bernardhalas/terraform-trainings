include "root" {
  path   = find_in_parent_folders()
  expose = true
}

terraform {
  source = "git::https://github.com/bernardhalas/terraform-trainings.git//2-modules/vm-module?ref=feature/add-terragrunt-session"
}

dependency connectivity {
  config_path = "../connectivity"
}

inputs = {
  location            = include.root.locals.location
  resource_group_name = include.root.locals.rg_name
  name                = "control-plane"
  vm_count            = include.root.locals.control_count
  subnet_id           = dependency.connectivity.outputs.subnet_ids[0]
}
