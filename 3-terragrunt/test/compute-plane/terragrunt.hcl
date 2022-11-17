include "root" {
  path   = find_in_parent_folders()
  expose = true
}

terraform {
  source = "git::https://github.com/bernardhalas/terraform-trainings.git//2-modules/vm-module?ref=main"
}

dependency control-plane {
  config_path  = "../control-plane"
  skip_outputs = true
}

dependency connectivity {
  config_path = "../connectivity"
}

inputs = {
  location            = include.root.locals.location
  resource_group_name = include.root.locals.rg_name
  name                = "compute-plane"
  vm_count            = include.root.locals.compute_count
  subnet_id           = dependency.connectivity.outputs.subnet_ids[1]
}
