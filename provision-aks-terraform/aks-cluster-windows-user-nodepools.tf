# resource "azurerm_kubernetes_cluster_node_pool" "win101" {
#   name                  = "win101"
#   kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
#   orchestrator_version  = data.azurerm_kubernetes_service_versions.current.latest_version
#   mode                  = "User"
#   os_disk_size_gb       = 30
#   os_type               = "Windows" # Default is Linux, we can change to Windows
#   vm_size               = "Standard_DS2_v2"
#   zones                 = [1, 2, 3]
#   enable_auto_scaling   = true
#   max_count             = 3
#   min_count             = 1

#   node_labels = {
#     "nodepool-type" = "user"
#     "environment"   = var.environment
#     "nodepoolos"    = "windows"
#     "app"           = "dotnet-apps"
#   }

#   tags = {
#     "nodepool-type" = "user"
#     "environment"   = var.environment
#     "nodepoolos"    = "windows"
#     "app"           = "dotnet-apps"
#   }
# }