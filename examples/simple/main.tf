module "simple" {
  source = "../../"

  name                = "simple"
  resource_group_name = "simple-rg"
  location            = "westeurope"

  short_name = "Short Name"

  webhooks = [
    {
      name                    = "callmyapiaswell"
      service_uri             = "http://example.com/alert"
      use_common_alert_schema = true
    },
    {
      name                    = "callmy2apiaswell"
      service_uri             = "http://example.com/alert2"
      use_common_alert_schema = true
    },
  ]
}