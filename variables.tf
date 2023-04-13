variable "resource_group_name" {
    type = string
    default = "demo"
  
}

variable "location" {
    type = string
    default = "eastus"
  
}

variable "cluster_name" {
  default = "k8sdemo"
}

variable "dns_prefix" {
  default = "k8sdemo"
}

variable "agent_count" {
  default = 3
}

