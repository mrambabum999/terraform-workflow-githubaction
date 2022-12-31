terraform {
  required_providers {
    azurerm = {
        souurce = "hasicorp/azurerm"
        version = "2.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sat-demo-rg"
    storage_account_name = "sttfstatemgto1"
    container_name       = "tfstate"
    key                  = "demo.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

resource "azurerm_resource_group" "rg" {
    name     = "demo-rg"
    location = "eastus" 
}

