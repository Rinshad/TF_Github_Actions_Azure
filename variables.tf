variable "location" {
  description = "The region to deploy resources"
  type        = string
}

variable "vnet_name" {
  description = "The name of the VPC"
  type        = string
}

variable "address_space" {
  description = "The address space for the VPC"
  type        = list(string)
}
variable "rg_name" {}

####SUBNET 

variable "subnet_name" {
  description = "Name of the subnet to create."
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

########## VM 
variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}
#variable "subnet_id" {}
