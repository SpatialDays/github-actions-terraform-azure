terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.22.0"
    }
  }
  required_version = ">= 1.1.0"
  backend "azurerm" {
    # will get configured with -backend-config= in the terraform init command
    # the backend config file will be created using envsubst and provider_secrets_template file
    # env vars are set in the github action
    # env vars used in provider_secrets_template file are also used in the variable blocks below
    # to configure the azurerm provider
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.SUBSCRIPTION_ID
  tenant_id       = var.TENANT_ID
  client_id       = var.CLIENT_ID
  client_secret   = var.CLIENT_SECRET

}

variable "SUBSCRIPTION_ID" {
  type = string
}

variable "TENANT_ID" {
  type = string
}

variable "CLIENT_ID" {
  type = string
}

variable "CLIENT_SECRET" {
  type = string
}
