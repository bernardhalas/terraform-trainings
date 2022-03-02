output private_ip {
  description = "Private IP address of the VM machine"
  value = azurerm_network_interface.primary.private_ip_address
}
