locals {
  common_name = "pfgk8s"
}

variable "acr" {
  default = "aksCRegistry"
}

variable "location" {
  default = "westus"
}

variable "address_space" {
  default = ["10.1.0.0/16", "10.1.0.0/24", "10.1.0.0/32"]
}

variable "agent_pool" {
  default = ["defaultpool", "Standard_D2s_v3"]
}

variable "tags" {
  default = {
    ias        = "terraform",
    created_by = "JJC",
    env        = "dev"
  }
}

variable "network_profile" {
  default = ["azure", "kubenet", "Standard"]
}

variable "publicip_sku" {
  default = ["Basic", "Standard"]
}
