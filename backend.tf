terraform {
  backend "azurerm" {
    resource_group_name   = "RGOrange-Test"
    storage_account_name  = "sademoalextfstate"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
    
  }
}