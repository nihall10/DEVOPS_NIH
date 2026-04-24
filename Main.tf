provider "azurerm" {
  features {

  }
  subscription_id = "69aaf1e8-4cfa-4d3f-aa59-f2a896045552"
}


resource "azurerm_resource_group" "zomato99" {
  for_each = toset(["kick78", "kick798", "kick555"])
  name     = each.key
  location = "west us"

}

resource "azurerm_resource_group" "insane" {
  for_each = var.insane
  name     = each.key
  location = "west us"
}