output "subnet_ids" {
  description = "Subnet identifiers"
  value       = azurerm_subnet.this[*].id
}
