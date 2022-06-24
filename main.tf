terraform {
required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.0.0"
    }       
  }
}

# Configuracion del Azure Provider
provider "azurerm" {
  skip_provider_registration = "true"
  subscription_id = "5eee38bf-2553-485f-96ad-b473079ef5a3"
  features {}
}
# Creacion de grupo de recursos
resource "azurerm_resource_group" "terra-linux" {
  name = "terra-linux-rg"
  location = "West Europe"
}
