terraform {
  backend "azurerm" {
    resource_group_name  = "pfg-tfs-aks-elk-course-rg"
    storage_account_name = "pfgtfsakselkcourse"
    container_name       = "pfgtfsakselkcoursestorcont"
    key                  = "terraform.tfstate"
  }
}