
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

data "azurerm_storage_container" "container" {
  name                 = var.container_name
  storage_account_name = azurerm_storage_account.azure_account.name
}

resource "azurerm_storage_blob" "example" {
  name                   = var.blob_file_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = var.blob_type
}