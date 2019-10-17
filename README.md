#### Create directory with main.tf module and provider.tf

```
mkdir nsg; cd nsg
```

#### cat main.tf

```
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
}
```

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

#### terraform

terraform init
terraform get or terraform get -update
terraform plan
terraform apply


