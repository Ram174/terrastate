resource "azurerm_resource_group" "Docker_tera" {
  name     = "docertera"
  location = var.location

}
resource "azurerm_virtual_network" "networkTerra" {
  name                = "azureteranetwork"
  location            = var.location
  resource_group_name = azurerm_resource_group.Docker_tera.name
  address_space       = ["10.0.0.0/16"]
  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

}
