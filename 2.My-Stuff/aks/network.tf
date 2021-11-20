resource "azurerm_virtual_network" "vnet" {
  address_space = [element(var.address_space,0)]
  location = var.location
  name = "${local.common_name}-vnet"
  resource_group_name = azurerm_resource_group.azure_k8s.name
}