variable "resource_group_name" {
  description = "The name of the resource group in which to create resources."
}

variable "location" {
  description = "The location/region where the resources will be created."
}

variable "virtual_machines" {
  description = "A map of virtual machine configurations."

  type = map(object({
    size                           = string
    admin_username                 = string
    admin_ssh_key                  = string
    publisher                      = string
    offer                          = string
    sku                            = string
    version                        = string
    os_disk_caching                = string
    os_disk_storage_account_type   = string
    source_image_publisher         = string
    source_image_offer             = string
    source_image_sku               = string
    source_image_version           = string
  }))



# resource_group_name = "example-rg"
# location            = "East US"
default = {
 

  virtual_machines = {
     "vm_config_1" = {
    size                           = "Standard_DS2_v2"
    admin_username                 = "adminuser1"
    admin_ssh_key                  = "ssh-rsa <your_ssh_public_key>"
    publisher                      = "Canonical"
    offer                          = "UbuntuServer"
    sku                            = "18.04-LTS"
    version                        = "latest"
    os_disk_caching                = "ReadWrite"
    os_disk_storage_account_type    = "Premium_LRS"
    source_image_publisher         = "Canonical"
    source_image_offer             = "UbuntuServer"
    source_image_sku               = "18.04-LTS"
    source_image_version           = "latest"
  },
  "vm_config_2" = {
    size                           = "Standard_DS3_v2"
    admin_username                 = "adminuser2"
    admin_ssh_key                  = "ssh-rsa <your_ssh_public_key>"
    publisher                      = "OpenLogic"
    offer                          = "CentOS"
    sku                            = "7.8"
    version                        = "latest"
    os_disk_caching                = "ReadOnly"
    os_disk_storage_account_type    = "Standard_LRS"
    source_image_publisher         = "OpenLogic"
    source_image_offer             = "CentOS"
    source_image_sku               = "7.8"
    source_image_version           = "latest"
  }
}
}

}