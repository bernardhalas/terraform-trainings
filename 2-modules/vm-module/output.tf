output "vm_addresses" {
  description = "IP addresses allocated to the VMs"
  value       = azurerm_network_interface.primary[*].private_ip_address
}
