provider "azurerm" {
  features {} 
}

module "Keyvault" {
  source                     = "../../modules/Keyvault"
  resource_group_name        = var.resource_group_name
  resource_group_location   = var.resource_group_location
  key_vault_name            = var.key_vault_name
  tenant_id                 = var.tenant_id
  service_principle_object_id = var.service_principle_object_id
}