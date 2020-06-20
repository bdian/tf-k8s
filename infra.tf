terraform {
  backend "azurerm" {
    resource_group_name   = "tf-k8s-rg"
    storage_account_name  = "tfstate13621"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "uksouth"
}