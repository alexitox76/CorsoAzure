#resource "azurerm_resource_group" "test_rg" {
#    name = "testalex-rg"
#    location = "${var.locations.location2}"
#}

data "azurerm_resource_group" "resource_group" {
  name = var.resource_group
}

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



