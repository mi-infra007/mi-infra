terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "achinta-dev"
    storage_account_name  = "terrastorage1"
    container_name        = "terra-remote"
    key                   = "mi.tfstate"
    
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id= "8b10287d-12d6-41e3-b62c-33457c006e96"
}


resource "azurerm_resource_group" "testRG_Achinta" {
  name     = "achinta2025"
  location = "West Europe"
}

