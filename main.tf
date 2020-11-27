terraform {
  required_version = ">= 0.12.6"
}

provider azurerm {
  version = "~> 2.38.0"
  features {}
}

locals {
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}

resource "azurerm_monitor_action_group" "main" {
  name                = "${var.name}-ag"
  resource_group_name = azurerm_resource_group.main.name
  short_name          = var.short_name

  tags = var.tags

  dynamic "webhook_receiver" {
    for_each = var.webhooks
    content {
      name        = webhook_receiver.value.name
      service_uri = webhook_receiver.value.service_uri
    }
  }
}