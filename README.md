### mkdir nsg; cd nsg

#### cat main.tf

module "aznsg" {
  source = "github.com/IrekRomaniuk/terraform-nsg.git"

  #provider = azurerm.net
  rg = "tmp"
  nsg = "nsg-net-eastus"
  rule = { 
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

    tags = {
    environment           = "prod"
    creator               = "iromaniuk"
    creationdate          = "10/17/19"
    applicationname       = "nsg"
    version               = "v1"
    autoshutdown          = "10:00:00"
    timewindow            = ""
    }
}
#### cat provider.tf 
```
provider "azurerm" {
  tenant_id=""
  subscription_id=""
  client_id=""
  client_secret=""
  skip_provider_registration = true
}
```

terraform init
terraform get


