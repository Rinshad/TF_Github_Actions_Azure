variable "location" {
  description = "Azure location of the resources."
  type        = string
}

variable "name" {
  description = "Name of the subnet to create."
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group to be imported."
  type        = string
}

variable "vnet_name" {
  description = "Name of the vNet to place the subnet."
  type        = string
}

variable "address_prefixes" {
  description = "List of address prefixes to be used on the subnet."
  type        = list(string)
}
variable "default_security_group_name" {
  description = "Name of the default network security group attached to the subnet."
  type        = string
}

variable "default_security_group_security_rules" {
  description = "List of rules of the the default network security group attached to the subnet."
  type        = any
}

variable "delegation" {
  description = "Subnet service delegations"
  type        = any
  default     = null
}