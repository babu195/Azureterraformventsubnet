resource "azurerm_resource_group" "ntier" {
    name = var.resorcegroup_details.name
    location = var.resorcegroup_details.location
  
}

resource "azurerm_virtual_network" "alexa_vnet" {
    name = var.vnet_details.name
    location = var.resorcegroup_details.location
    resource_group_name = var.resorcegroup_details.name
    address_space = var.vnet_details.address_space
    depends_on = [
      azurerm_resource_group.ntier
    ]
}

resource "azurerm_subnet" "alexa_subnet" {
    count = length(var.subnet_details.name)
    name = var.subnet_details.name[count.index]
    resource_group_name = var.resorcegroup_details.name
    virtual_network_name = var.vnet_details.name
    address_prefixes = [cidrsubnet(var.vnet_details.address_space[0],8,count.index)]
    depends_on = [
      azurerm_resource_group.ntier,
      azurerm_virtual_network.alexa_vnet
    ]

}