terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.47.0"
    }
  }
}

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret
provider "azurerm" {
  features {} 
  client_id       = "00000000-0000-0000-0000-000000000000"
  client_secret   = "20000000-0000-0000-0000-000000000000"
  tenant_id       = "10000000-0000-0000-0000-000000000000"
  subscription_id = "20000000-0000-0000-0000-000000000000"
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_linux_virtual_machine" "example" {
  for_each = var.virtual_machines

  name                  = each.key
  resource_group_name   = azurerm_resource_group.example.name
  location              = azurerm_resource_group.example.location
  size                  = each.value.size
  admin_username        = each.value.admin_username
  # admin_ssh_key         = each.value.admin_ssh_key
  # disable_password_auth = true

  # storage_image_reference {
  #   publisher = each.value.publisher
  #   offer     = each.value.offer
  #   sku       = each.value.sku
  #   version   = each.value.version
  # }

  os_disk {
    caching              = each.value.os_disk_caching
    storage_account_type = each.value.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = each.value.source_image_publisher
    offer     = each.value.source_image_offer
    sku       = each.value.source_image_sku
    version   = each.value.source_image_version
  }

  network_interface_ids = [azurerm_network_interface.example[each.key].id]
}

resource "azurerm_network_interface" "example" {
  for_each = var.virtual_machines

  name                = "${each.key}-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    private_ip_address_allocation = "Dynamic"
  }
}

