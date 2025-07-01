variable "resource_group_name" {
  description = "The name of the resource group for the Key Vault"
  type        = string
  default     = "keyvault-resources"
}

variable "resource_group_location" {
  description = "The location for the Key Vault resource group"
  type        = string
  default     = "West Europe"
}

variable "key_vault_name" {
  description = "The name of the Azure Key Vault"
  type        = string
  default     = "Algorimsvault"
}

variable "tenant_id" {
  description = "The Tenant ID for your Azure Active Directory"
  type        = string
}

variable "service_principal_object_id" {
  description = "The Object ID of the Service Principal that needs access to the Key Vault"
  type        = string
}
