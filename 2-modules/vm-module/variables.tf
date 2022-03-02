variable "name" {
  default     = "default-name"
  description = "Components name identifier"
  type        = string
}

variable "resource_group_name" {
  description = "ResourceGroup for resource creation"
  type        = string
}

variable "location" {
  description = "Location of the resources"
  type        = string
}

variable "vm_count" {
  default     = "1"
  description = "Count of the VMs"
  type        = number
}

variable "subnet_id" {
  description = "ID of the subnet for placing the VMs"
  type        = string
}
