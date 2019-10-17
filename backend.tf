terraform {
  backend "azurerm" {
    resource_group_name  = "net-spoke-eastus-prod-automation"
    storage_account_name = "sta360spokeneteastus"
    container_name       = "tfstate"
    key                  = "prod/nsg-1.tfstate"
  }
}