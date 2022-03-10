include "root" {
  path   = find_in_parent_folders()
  expose = true
}

terraform {
  source = "git::https://github.com/bernardhalas/terraform-trainings.git//2-modules/rg-module?ref=main"
}

inputs = {
  location = include.root.locals.location
  name     = include.root.locals.rg_name
}
