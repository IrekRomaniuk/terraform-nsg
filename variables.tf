
## template variables

variable "nsg" {}

variable "rg" {
  type        = "string"
  description = "The Azure resource group"
}

variable "rule" {
  type        = "map"
  description = "NSG rule"

  default = {
    name      = "test"
    priority  = 100
    direction = "Inbound"
    access    = "Allow"
    protocol  = "Tcp"
    sport     = "*"
    dport     = "443"
    src       = "*"
    dst       = "*"
  }
}