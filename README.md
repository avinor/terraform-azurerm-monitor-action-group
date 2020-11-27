# Monitor Action Group


This module deploys a //TODO:

## Usage

To create a monitor action group deployed with [tau](https://github.com/avinor/tau).

```terraform
module {
  source = "github.com/avinor/terraform-azurerm-montor-action-group"
}

inputs {
  name                = "simple"
  resource_group_name = "actiongroup-rg"
  location            = "westeurope"
  short_name          = "Short Name"

}
```
