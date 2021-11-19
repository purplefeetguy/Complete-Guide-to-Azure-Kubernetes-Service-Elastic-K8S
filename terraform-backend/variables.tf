variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "region" {
  type    = string
  default = "West US 2"
}

variable "resource_group" {
  type    = string
  default = "pfg-tfs-aks-elk-course-rg"
}

variable "storage_account_name" {
  type = string
  default = "pfgtfsakselkcourse"
}

variable "storage_container_name" {
  type = string
  default = "pfgtfsakselkcoursestorcont"
  
}