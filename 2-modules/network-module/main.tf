resource "azurerm_virtual_network" "this" {
  name                = "${var.name}-network"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "this" {
  count                = var.subnet_count
  name                 = "${var.name}-${count.index}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.0.${count.index}.0/24"]
}
