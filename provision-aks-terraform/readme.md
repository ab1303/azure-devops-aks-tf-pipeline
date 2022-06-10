Step-02: Create SSH Public Key for Linux VMs

# Create Folder
mkdir $HOME/.ssh/aks-dev-sshkeys-terraform

# Create SSH Key
ssh-keygen \
    -m PEM \
    -t rsa \
    -b 4096 \
    -C "azureuser@myserver" \
    -f ~/.ssh/aks-dev-sshkeys-terraform/aksdevsshkey \
    -N mypassphrase

# List Files
ls -lrt $HOME/.ssh/aks-dev-sshkeys-terraform



# Azure AKS Get Credentials with --admin
az aks get-credentials --resource-group terraform-aks-dev --name terraform-aks-dev-cluster --admin

# Get Full Cluster Information
az aks show --resource-group terraform-aks-dev --name terraform-aks-dev-cluster
az aks show --resource-group terraform-aks-dev --name terraform-aks-dev-cluster -o table

# Get AKS Cluster Information using kubectl
kubectl cluster-info

# List Kubernetes Nodes
kubectl get nodes



# Azure AKS Get Credentials with --admin
az aks get-credentials --resource-group terraform-aks-dev --name terraform-aks-dev-cluster --overwrite-existing

# List Kubernetes Nodes
kubectl get nodes
URL: https://microsoft.com/devicelogin
Code: GUKJ3T9AC (sample)
Username: taksadmin1@stacksimplifygmail.onmicrosoft.com  (Change your domain name)
Password: @AKSadmin22


# Error creating AD Group

https://github.com/hashicorp/terraform-provider-azuread/issues/567
https://github.com/hashicorp/terraform-provider-azuread/issues/624