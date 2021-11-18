resource "azure_resource_group" "azure_k8s" {
  name     = local.common_name
  location = var.location
  tags     = var.tag
}

resource "azure_log_analytics_workspace" "azure_law" {
  name                = "pfg-workspace"
  resource_group_name = azure_resource_group.azure_k8s.name
  sku                 = "Free"
  retention_in_days   = 7
}

resource "azure_log_analytics_solution" "azure_las" {
  solution_name         = "ContainerInsights"
  resource_group_name   = azure_resource_group.azure_k8s.name
  location              = var.location
  workspace_name        = azure_law.name
  workspace_resource_id = azure_log_analytics_workspace.azure_k8s.id
  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}
