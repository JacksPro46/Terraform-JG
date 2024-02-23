variable "resourcedetails" {
  type = map(object({
    name = string
    location = string
    size     = string
    rg_name  = string
    vnet_name = string
    subnet_name = list(string)
    address_prefixes = list(string)
    publisher = string
    offer     = string
    sku       = string
    version   = string
    public_ip_name = string
    alpha = number
  }))
default = {
    westus = {
      rg_name  = "westus-rg"  
      name     = "west-vm"
      location = "westus2"
      size     = "Standard_B2s"
      vnet_name = "west-vnet"
      subnet_name = ["subnet1_West", "subnet2_West", "subnet3_West"]
      address_prefixes = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "18.04-LTS"
      version   = "latest" 
      public_ip_name = "jg_public_ip1_vm1" 
      alpha = 1     
    }
    eastus = {
      rg_name  = "eastus-rg"  
      name     = "east-vm"
      location = "eastus"
      size     = "Standard_B1s"
      vnet_name = "east-vnet"
      subnet_name = ["subnet1_East", "subnet2_East"]
      address_prefixes = ["10.0.1.0/24", "10.0.2.0/24"]
      publisher = "Canonical"
      offer     = "UbuntuServer"
      sku       = "20.04-LTS"
      version   = "latest"    
      public_ip_name = "jg_public_ip2_vm2"  
      alpha = 1
    }
  }

}