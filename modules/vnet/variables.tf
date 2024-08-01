variable "rg_name" {}

variable "vnet_name" {
  description = "The name of the VPC"
  type        = string
}

variable "location" {
  description = "The region to deploy resources"
  type        = string
}

variable "address_space" {
  description = "The address space for the VPC"
  type        = list(string)
}