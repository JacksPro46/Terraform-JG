terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.0.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "myrg" {
  name     = var.resource_group
  location = var.location
}



resource "azurerm_virtual_network" "vnet" {
  name                = var.Vnet
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = var.subnet
    address_prefix = var.subnet_address
  }

  

  tags = {
    environment = "Dev"
  }
}