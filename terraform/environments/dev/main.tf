provider "azurerm" {
  features {} 
}

resource "azurerm_resource_group" "keyvault_rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_key_vault" "algorims" {
  name                        = var.key_vault_name
  location                    = azurerm_resource_group.keyvault_rg.location
  resource_group_name         = azurerm_resource_group.keyvault_rg.name
  sku_name                    = "standard"
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

   access_policy {
    tenant_id = var.tenant_id
    object_id = var.service_principal_object_id

    key_permissions = [
      "Get",
      "List",
      "Create",
      "Delete",
      "Import",
      "Update"
    ]

    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete"
    ]
  }
}
