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

variable "azurem_plan_name" {
    type = string
    default = "azure_plan"
}

variable "azurem_plan_os" {
    type = string
    default = "Linux" 
}

variable "azurem_plan_sku" {
    type = string
    default = "FREE"
  
}

variable "azurem_app_name" {
    type = string
    default = "linux-function-app"  
}