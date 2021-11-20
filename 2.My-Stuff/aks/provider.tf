terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "2.85.0"
    }
  }
  
}

provider "azurerm" {

  features {
    
  }
  
  subscription_id = var.subscription_id
  # client_id       = "..."
  # client_secret   = "..."
  tenant_id       = var.tenant_id
}
