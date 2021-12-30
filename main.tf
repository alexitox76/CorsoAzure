#resource "azurerm_resource_group" "test_rg" {
#    name = "testalex-rg"
#    location = "${var.locations.location2}"
#}

data "azurerm_resource_group" "resource_group" {
  name = var.resource_group
}

data "azurerm_storage_account" "sa-tfstate" {
  name                = "sademoalextfstate"
  resource_group_name = "RGOrange-Test"
}


