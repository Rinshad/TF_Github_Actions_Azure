module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "3.0.0" # Specify the version of the module

  # Define the resource group
  resource_group_name = var.resource_group_name

  # Define the VNet name and address space
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  vnet_location       = var.location
  tags                = var.tags
}