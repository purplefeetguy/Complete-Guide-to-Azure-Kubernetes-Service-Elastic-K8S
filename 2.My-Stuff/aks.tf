resource "azurerm_kubernetes_cluster" "k8s_cluster" {
  name                = "${local.common_name}-cluster"
  resource_group_name = azurerm_resource_group.azure_k8s.name
  location            = var.location
  kubernetes_version  = "1.20.9"
  dns_prefix          = local.common_name

  default_node_pool {
    name               = var.agent_pool
    vm_size            = var.agent_pool
    node_count         = 3
    availability_zones = [1, 2, 3]
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "Standard"
    network_policy = "azure"
  }

  role_based_access_control {
    enabled = true
  }

  addon_profile {
    
    oms_agent {
      enabled = true
      log_analytics_workspace_id = azurerm_log_analytics_solution.azurerm_log_analytics_solution.azure_las
    }

    kube_dashboard {
      enabled = true
    }
  }

  tags = {
    "key" = "value"
  }
  
}
