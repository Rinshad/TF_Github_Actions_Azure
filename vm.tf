resource "azurerm_network_interface" "vm_nic" {
  name                = "${var.vm_name}-nic"
  location            = module.vnet.location
  resource_group_name = module.vnet.rg_name

  ip_configuration {
    name                          = "${var.vm_name}-ipcfg"
    subnet_id                     = module.subnet.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.example.id
  }
}

resource "azurerm_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = module.vnet.location
  resource_group_name   = module.vnet.rg_name
  network_interface_ids = [azurerm_network_interface.vm_nic.id]
  vm_size               = var.vm_size

  storage_os_disk {
    name              = "${var.vm_name}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
resource "azurerm_virtual_machine_extension" "vm" {
  name                 = "hostname"
  virtual_machine_id   = azurerm_virtual_machine.vm.id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"

  settings = <<SETTINGS
 {
  "fileUris": ["https://raw.githubusercontent.com/Rinshad/tf_github_actions/master/package_installation.sh"],
  "commandToExecute": "/bin/bash package_installation.sh"
 }
SETTINGS


  tags = {
    environment = "dev"
  }
}
resource "azurerm_public_ip" "example" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = var.rg_name
  location            = var.location
  allocation_method   = "Dynamic"
}