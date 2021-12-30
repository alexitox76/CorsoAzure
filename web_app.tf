resource "azurerm_app_service_plan" "aspdemoalex" {
  name                = var.app_service_plan_name
  location            = data.azurerm_resource_group.resource_group.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  tags                = data.azurerm_resource_group.resource_group.tags
  kind                = "Linux"
  reserved            = "true"

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "asdemoalex" {
  name                = var.app_service_name
  location            = data.azurerm_resource_group.resource_group.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  tags                = data.azurerm_resource_group.resource_group.tags
  app_service_plan_id = azurerm_app_service_plan.aspdemoalex.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

}