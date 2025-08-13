output "key_vault_name" {
  description = "The name of the Azure Key Vault"
  value       = azurerm_key_vault.algorims.name
}

output "key_vault_id" {
  description = "The ID of the Azure Key Vault"
  value       = azurerm_key_vault.algorims.id
}

output "key_vault_uri" {
  description = "The URI of the Azure Key Vault"
  value       = azurerm_key_vault.algorims.vault_uri
}
