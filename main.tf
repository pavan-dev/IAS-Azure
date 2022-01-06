terraform {
  required_version = ">= 0.13"

  required_providers {
    azurerm = {
      #source  = "hashicorp/aws"
      version = "~> 2.60"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "newrs" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

# resource "azurerm_app_service_plan" "service-plan" {
#   name                = var.azurerm_app_service_plan
#   location            = var.resource_group_location
#   resource_group_name = var.resource_group_name
#   kind                = "Linux"
#   reserved            = true
#   sku {
#     tier = "Standard"
#     size = "S1"
#   }
#   tags = {
#     environment = "dev-environment"
#   }
# }

# resource "azurerm_app_service" "app-service" {
#   name                = var.azurerm_app_service
#   location            = var.resource_group_location
#   resource_group_name = var.resource_group_name
#   app_service_plan_id = azurerm_app_service_plan.service-plan.id
#   site_config {
#     linux_fx_version = "DOTNETCORE|3.1"
#   }
#   tags = {
#     environment = "dev-environment"
#   }
# }

