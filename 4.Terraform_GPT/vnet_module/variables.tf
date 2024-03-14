variable "resource_group" {
  type = string
  description = "This is name of rg"
}

variable "location" {
  type = string
  description = "This is name of location"
}

variable "Vnet" {
  type = string
  description = "This is name of Vnet"
}

variable "subnet" {
  type = string
  description = "This is name of Subnet"
}

variable "vnet_address_prefix" {
  type = string
  description = "This is value of Vnet Address"

}

variable "subnet_address" {
  type = string
  description = "This is value of subnet address"
}