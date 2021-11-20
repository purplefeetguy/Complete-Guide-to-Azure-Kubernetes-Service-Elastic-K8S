resource "azurerm_resource_group" "azure_k8s" {
  name     = "${local.common_name}-rg"
  location = var.location
  tags     = var.tags
}

