module "connectivity" {
  source              = "./network-module"
  name                = "k8s-network"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  subnet_count        = 2
}

module "control_plane_nodes" {
  source              = "./vm-module"
  name                = "control-plane"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  vm_count            = 3
  subnet_id           = module.connectivity.subnet_ids[0]
}

module "compute_plane_nodes" {
  source              = "./vm-module"
  name                = "compute-plane"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  vm_count            = 4
  subnet_id           = module.connectivity.subnet_ids[1]
}
