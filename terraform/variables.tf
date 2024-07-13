variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "k8s_version" {
  description = "The version of Kubernetes to use for the AKS cluster"
  type        = string
}

variable "region" {
  description = "The region where the resources will be created"
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_label" {
  description = "The DNS label for the AKS cluster"
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry"
  type        = string
  default     = "Standard"
}

variable "acr_admin_enabled" {
  description = "Specifies whether the admin user is enabled for the Azure Container Registry"
  type        = bool
  default     = false
}
