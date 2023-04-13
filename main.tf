data "azurerm_client_config" "current" {}


resource "azurerm_resource_group" "rg1" {
    name = var.resource_group_name
    location = var.location
  
}


resource "azurerm_kubernetes_cluster" "k8s" {
  location            = var.location
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  tags                = {
    Environment = "Development"
  }

  default_node_pool {
    name       = "agentpool"
    vm_size    = "Standard_D2_v2"
    node_count = var.agent_count
  }
 
  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }

  service_principal {
    client_id     = "301ecae0-7e23-4034-aa85-66a07d9e4ea1"
    client_secret = "GaP8Q~EL-ckvVNako4ew4t_NthIG8BRu9yYOsaSC"
  }
  
}

resource "azurerm_container_registry" "acr" {
  name                = "containerdemo2708"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
}