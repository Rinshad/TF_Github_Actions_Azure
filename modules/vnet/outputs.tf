output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}
output "rg_name" {
  value = azurerm_resource_group.rg.name
}   
output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}
output "location" {
  value = azurerm_virtual_network.vnet.location
}