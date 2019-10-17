## outputs
output "resource_group_name" {
  value = "${data.azurerm_resource_group.rg.name}"
}
output "network_security_group" {
  value = "${data.azurerm_network_security_group.nsg.name}"
}