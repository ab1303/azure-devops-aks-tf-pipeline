
# Create a resource group
resource "azurerm_resource_group" "aks_rg" {
  name      =   "${var.resource_group_name}-${var.environment}"
  location  =   var.location

  # Add Tags
  tags = {
    "environment" = var.environment
  }
}

resource random_pet random {
  length    = 5
  prefix    = "aks"
}
