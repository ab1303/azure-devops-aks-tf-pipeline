

variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "Australia East"
}

# Azure Resource Group Name
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "terraform-aks"
}

# Azure AKS Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  default = "dev"
}


# V2 Changes
# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  default = "~/.ssh/aks-dev-sshkeys-terraform/aksdevsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "P@ssw0rd_ashahid1234"
  description = "This variable defines the Windows admin password k8s Worker nodes"  
}