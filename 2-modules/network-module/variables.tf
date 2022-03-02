variable "name" {
  default     = "default"
  description = "Components name identifier"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name for resource creation"
  type        = string
}

variable "location" {
  description = "RG location"
  type        = string
}

variable "subnet_count" {
  default     = 1
  description = "Count of subnets"
  type        = number
}
