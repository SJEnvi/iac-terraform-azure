
resource "azurerm_resource_group" "wsb_szymon" {
  name     = var.azurerm_resource_group_name
  location = var.azurerm_resource_group_location
}

resource "azurerm_storage_account" "azure_account" {
  name                     = var.account_name
  resource_group_name      = azurerm_resource_group.wsb_szymon.name
  location                 = azurerm_resource_group.wsb_szymon.location
  account_tier             = var.azurem_account_tier
  account_kind             = var.azurem_account_kind
  account_replication_type = var.azurem_account_replication

  tags = {
    environment = var.azurem_account_environment
  }
}

resource "azurerm_service_plan" "azure_plan" {
  name                = var.azurem_plan_name
  resource_group_name = azurerm_resource_group.wsb_szymon.name
  location            = azurerm_resource_group.wsb_szymon.location
  os_type             = var.azurem_plan_os
  sku_name            = var.azurem_plan_sku
}

resource "azurerm_linux_function_app" "function_app" {
  name                = var.azurem_app_name
  resource_group_name = azurerm_resource_group.wsb_szymon.name
  location            = azurerm_resource_group.wsb_szymon.location

  storage_account_name = azurerm_storage_account.azure_account.name
  service_plan_id      = azurerm_service_plan.azure_plan.id

  site_config {}
}

