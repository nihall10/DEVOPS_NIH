provider "azurerm" {
  features {

  }
  subscription_id = "69aaf1e8-4cfa-4d3f-aa59-f2a896045552"
}


resource "azurerm_resource_group" "zomato99" {
  for_each = var.insane
  name     = each.key
  location = each.value

}

resource "azurerm_resource_group" "insane" {
  for_each = var.insane
  name     = each.key
  location = "west us"
}

resource "azurerm_storage_account" "superman11" {
  for_each                 = toset(["kick78", "kick798", "kick555"])
  name                     = each.key
  resource_group_name      = azurerm_resource_group.zomato99[each.key].name
  location                 = azurerm_resource_group.zomato99[each.key].location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}