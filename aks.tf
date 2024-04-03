provider "azurerm" {
  features {}
}

module "vnet_module" {
  source = "../4.Terraform_GPT/vnet_module"
  resource_group = var.resource_group
  location = var.location
  Vnet = "jg-vnet1"
  subnet = "jg-vnet1-subnet1"
  vnet_address_prefix = "10.0.0.0/16"
  subnet_address = "10.0.1.0/24"

  
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  depends_on = [ module.vnet_module ]
  count = 3
  name                = "${local.Prefix}AKS${count.index}-${local.Postfix[0]}"
  location            = var.location
  resource_group_name = var.resource_group
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "${local.Prefix}Node-${local.Postfix[0]}"
    node_count = 8
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = [local.dev_tags, local.Org, local.Postfix[0]]
}

