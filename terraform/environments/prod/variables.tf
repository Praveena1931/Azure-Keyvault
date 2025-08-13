variable "resource_group_name" {}
variable "resource_group_location" {}
variable "key_vault_name" {}
variable "tenant_id" {}

variable "service_principle_object_id" {}

variable "tags" {
  type = map(string)
}
