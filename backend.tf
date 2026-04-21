terraform {
  backend "azurerm" {
    resource_group_name  = "orange77"
    storage_account_name = "orange78"
    container_name       = "orange79"
    key                  = "terraform.tfstate"
  }
}