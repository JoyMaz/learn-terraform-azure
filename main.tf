

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "eastus"
  tags = {
    environment = " first deployment"
    team        = "devops"
  }
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = azurerm_resource_group.rg.name
}
#resource "azurerm_virtual_machine" "VM" {
#  name                = "myTFVM"
#  
#  location            = "eastus"
#  resource_group_name = azurerm_resource_group.rg.name
#}
