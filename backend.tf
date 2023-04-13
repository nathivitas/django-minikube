terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformInfra"
    storage_account_name = "natyca"
    container_name       = "natyca"
    key                  = "natyca.tfstate"
  }
}
