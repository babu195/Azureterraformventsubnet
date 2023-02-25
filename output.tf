output "vnet_id" {
    value = azurerm_virtual_network.alexa_vnet.id
  
}   

output "vnet_name" {
    value = azurerm_virtual_network.alexa_vnet.name
  
}

output "vnet_adress" {
    value = azurerm_virtual_network.alexa_vnet.address_space
  
}

output "subnt" {
    value = azurerm_subnet.alexa_subnet
  
}