module "vnet" {
  source       = "./modules/vnet"
  #source        = "github.com/Rinshad/temp_tf_vnet_module"
  vnet_name     = var.vnet_name
  location      = var.location
  address_space = var.address_space
  rg_name       = var.rg_name
}
module "subnet" {
  source                                = "./modules/subnet"
  location                              = var.location
  name                                  = var.subnet_name
  rg_name                               = module.vnet.rg_name
  vnet_name                             = module.vnet.vnet_name
  address_prefixes                      = var.address_prefixes
  default_security_group_name           = var.default_security_group_name
  default_security_group_security_rules = var.default_security_group_security_rules

  depends_on = [module.vnet]
}