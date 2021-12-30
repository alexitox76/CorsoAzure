output "location_RG" {
  value = data.azurerm_resource_group.resource_group.location
}
output "ID_RG" {
  value = data.azurerm_resource_group.resource_group.id
}
output "RG_name" {
  value = data.azurerm_resource_group.resource_group.name
}
output "RG_tags" {
  value = data.azurerm_resource_group.resource_group.tags
}

output "app_service_url" {
    value = "https://${azurerm_app_service.asdemoalex.default_site_hostname}"
}

output "app_service_ips" {
    value = azurerm_app_service.asdemoalex.outbound_ip_addresses
}

output "storage_state_account_tier" {
  value = data.azurerm_storage_account.sa-tfstate.account_tier
}

output "storage_state_primary_access_key" {
  value = data.azurerm_storage_account.sa-tfstate.primary_access_key
  sensitive = true
}
output "storage_state_primary_file_endpoint" {
  value = data.azurerm_storage_account.sa-tfstate.primary_file_endpoint
}
output "storage_state_primary_web_endpoint" {
  value = data.azurerm_storage_account.sa-tfstate.primary_web_endpoint
}