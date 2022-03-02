# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.87"
    }
  }

  required_version = ">= 1.0.11"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "MainRG"
  location = "germanywestcentral"
}
