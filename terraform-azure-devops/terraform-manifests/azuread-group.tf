data "azuread_client_config" "current" {}

data "azuread_user" "z1192753" {
  user_principal_name = "z1192753@wowcorp.com.au"
}


resource "azuread_group" "aks_administrators" {
  display_name          = "${azurerm_resource_group.aks_rg.name}-cluster-administrators"
  description           = "Azure AKS Kubernetes administrators for the ${azurerm_resource_group.aks_rg.name}-cluster."
  owners                = [data.azuread_client_config.current.object_id]
  security_enabled      = true
}