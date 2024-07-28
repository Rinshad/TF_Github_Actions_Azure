resource "azurerm_resource_group" "tfexample" {
  name     = "my-terraform-rg"
  location = "East US"
}

# Create a Storage account
resource "azurerm_storage_account" "terraform_state" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.tfexample.name
  location                 = azurerm_resource_group.tfexample.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "my-terraform-env"
  }
}