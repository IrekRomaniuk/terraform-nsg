data "azurerm_resource_group" "rg" {
   name     = "${var.rg}"
}

data "azurerm_network_security_group" "nsg" {
  name                = "${var.nsg}"
  resource_group_name = "${data.rg.name}"

  security_rule {
    name                       = "${var.rule.name}"
    priority                   = "${var.rule.priority}"
    direction                  = "${var.rule.direction}"
    access                     = "${var.rule.access}"
    protocol                   = "${var.rule.protocol}"
    source_port_range          = "${var.rule.sport}"
    destination_port_range     = "${var.rule.dport}"
    source_address_prefix      = "${var.rule.src}"
    destination_address_prefix = "${var.rule.dst}"
  }

}