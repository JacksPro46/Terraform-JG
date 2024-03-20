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

terraform {
  backend "azurerm" {
    resource_group_name = "JG_RG1"
    storage_account_name = "jgstoragetf"
    sas_token = "************************"
    subscription_id = "***********************************"
    container_name = "tfstatefiles"
    key = "vnet-modulefile.tfstate"
    access_key = "**********************************************"

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
  address_space       = ["${var.vnet_address_prefix}"]

  subnet {
    name           = var.subnet
    address_prefix = var.subnet_address
  }

  

  tags = {
    environment = "Dev"
  }
}