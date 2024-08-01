rg_name             = "dev-vnet-rg"
vnet_name           = "vnet-dev"
location            = "eastus"
address_space       = ["10.0.0.0/16"]
subnet_name         = "web-subnet-1"
address_prefixes    = ["10.0.1.0/24"]
default_security_group_name = "default_sg_001"
vm_name                  = "dev-vm"
vm_size                  = "Standard_B1ms"
admin_username           = "adminuser"
admin_password           = "P@ssword1234"
default_security_group_security_rules = [
  {
    name                           = "nsg-rule-001"
    description                    = "http application"
    priority                       = 1001
    direction                      = "Inbound"
    access                         = "Allow"
    protocol                       = "Tcp"
    source_port_range              = "*"
    destination_port_range         = "22"
    source_address_prefixes        = ["*"]
    destination_address_prefixes   = ["0.0.0.0/0"]
  }
]