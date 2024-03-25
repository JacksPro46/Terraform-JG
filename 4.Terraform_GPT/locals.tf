locals {
  resource_group_name = "az-jg-${var.resource_group}-metric"
  service_name = "az-jg-service-${var.bu_name}"
  Owner_name =  "Jagan Mohan"
  common_tags = {
      service = local.service_name
      Owner   = local.Owner_name
  } 
}