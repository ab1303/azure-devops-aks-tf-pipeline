terraform {
# Use a recent version of Terraform
  required_version = ">= 1.0"

  required_providers {
    # Azure Resource Manager
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.9.0"
    }
    
    # Azure Active Directory
     azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.22.0"
    }

    # Random 3.x
     random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }

  }

# Terraform state storage

  backend "azurerm" {      
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "storagetfaks1303001"
    container_name        = "tfstatefiles"
    key                   = "dev.terraform.tfstate"
  }
  
}


provider "azurerm" {
  # Configuration options
   features {}
}