module "vnetmodule" {
  source = "./vnet_module"
  resource_group = "RG1_JG"
  location = "EastUS"
  Vnet = "jg-vnet1"
  subnet = "jg-vnet1-subnet1"
  vnet_address_prefix = "10.0.0.0/16"
  subnet_address = "10.0.1.0/24"
}


resource "azurerm_app_service_plan" "app_paln" {
  name                = var.app_paln_name
  location            = var.location
  resource_group_name = var.resource_group

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "example" {
  depends_on = [ azurerm_app_service_plan.app_paln ]
  name                = var.app_service_name
  location            = var.location
  resource_group_name = local.resource_group_name  ## added name from locals.tf file that enhances larger name here
  app_service_plan_id = azurerm_app_service_plan.app_paln.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}