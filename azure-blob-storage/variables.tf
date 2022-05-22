variable "azurerm_resource_group_name" {
  type = string
  default = "WSB-Szymon-resources"
}

variable "azurerm_resource_group_location" {
  type = string
  default = "North Europe"
}

variable "account_name" {
    type = string
    default = "wrx71305@student.wsb.wroclaw.pl"
}

variable "azurem_account_tier" {
    type = string
    default = "Standard"
  
}

variable "azurem_account_kind" {
    type = string
    default = "Storage"
}

variable "azurem_account_replication" {
    type = string
    default = "GRS"
}

variable "azurem_account_environment" {
    type = string
    default = "staging"
}

variable "container_name" {
    type = string
    default = "my_container"
}

variable "blob_file_name" {
    type = string
    default = "blob.zip"
}

variable "blob_type" {
    type = string
    default = "Block"
  
}