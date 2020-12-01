# Monitor Action Group


This module deploys an azure monitor action group.

Support for webhook and email revivers.

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

  webhooks = [
    {  
      name                    = "myalert"
      service_uri             = "https://examples.com"
      use_common_alert_schema = true
    },
  ]
}
```
