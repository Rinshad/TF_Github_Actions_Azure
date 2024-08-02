output "vm_id" {
  description = "The ID of the created virtual machine"
  value       = azurerm_virtual_machine.vm.id
}

output "public_ip" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.example.ip_address
}
