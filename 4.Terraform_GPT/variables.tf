variable "resource_group" {
  type = string
  description = "This is name of rg"
}

variable "location" {
  type = string
  description = "This is name of location"
}


variable "app_paln_name" {
  type = string
  description = "The app_plan is the name of app service plan"
}

# variable "location" {
#   type = string
#   description = "The location is for app serivice"
# }

variable "app_service_name" {
  type = string
  description = "The name of the service"
}

variable "bu_name" {
  type = string
  description = "This name referred to business unit"
}

variable "dep_name" {
  type = string
  description = "This name refers to department name"
}
