# variables.tf
variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure Client ID for the Service Principal"
}

variable "client_secret" {
  type        = string
  description = "Azure Client Secret for the Service Principal"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "my-terraform-rg"
}

variable "location" {
  type        = string
  description = "Azure location for all resources"
  default     = "East US"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
  default     = "my-vnet"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "The address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "aks_cluster_name" {
  type        = string
  description = "The name of the AKS cluster"
  default     = "my-aks-cluster"
}

variable "aks_node_count" {
  type        = number
  description = "The number of AKS nodes"
  default     = 2
}

variable "admin_username" {
  type        = string
  description = "The admin username for the AKS nodes"
  default     = "azureuser"
}

variable "ssh_public_key" {
  type        = string
  description = "The SSH public key to access AKS nodes"
}
