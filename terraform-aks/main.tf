resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.region
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  kubernetes_version  = var.k8s_version
  location            = var.region
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = var.dns_label

  default_node_pool {
    name                = "default"
    node_count          = 1
    vm_size             = "Standard_DS2_v2"
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }

  lifecycle {
    ignore_changes = [service_principal]
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "azure"
  }
}

# resource "azurerm_role_assignment" "acr_pull" {
#   principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
#   role_definition_name = "AcrPull"
#   scope                = azurerm_container_registry.acr.id
# }
#
# resource "azurerm_container_registry" "acr" {
#   name                = var.acr_name
#   resource_group_name = azurerm_resource_group.aks.name
#   location            = azurerm_resource_group.aks.location
#   sku                 = "Basic"
#   admin_enabled       = true
# }

