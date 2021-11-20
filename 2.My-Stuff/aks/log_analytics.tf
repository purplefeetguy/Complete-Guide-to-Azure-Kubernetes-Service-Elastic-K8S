resource "azurerm_log_analytics_workspace" "azure_law" {
  name                = "${local.common_name}-law"
  location            = var.location
  resource_group_name = azurerm_resource_group.azure_k8s.name
  sku                 = "Free"
  retention_in_days   = 7
}

resource "azurerm_log_analytics_solution" "azure_las" {
  solution_name         = "ContainerInsights"
  resource_group_name   = azurerm_resource_group.azure_k8s.name
  location              = var.location
  workspace_name        = azurerm_log_analytics_workspace.azure_law.name
  workspace_resource_id = azurerm_log_analytics_workspace.azure_law.id
  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}
