variable "region" {
  type    = string
  default = "westus"
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