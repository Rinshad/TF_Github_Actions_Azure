terraform {
  backend "azurerm" {
    resource_group_name  = "mdp_prod_rg_1"
    storage_account_name = "prodtfstatefiles"
    container_name       = "terraformstatefiles"
    key                  = "github.terraform.tfstate"
  }
}