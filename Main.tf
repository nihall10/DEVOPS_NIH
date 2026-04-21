provider "azurerm" {
  features {

  }
  subscription_id = "69aaf1e8-4cfa-4d3f-aa59-f2a896045552"
}

#resource_group

resource "azurerm_resource_group" "test1" {
  name     = var.rg_name
  location = var.location

}

resource "azurerm_storage_account" "test11" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.test1.name
  location                 = azurerm_resource_group.test1.location
  account_tier              = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "test121" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.test11.name
  container_access_type = "private"

}