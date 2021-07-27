terraform {
  required_version = "~> 1.0.3"

  required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
      version = "2.69.0"
    }
  }

backend "azurerm" {
  use_azuread_auth     = true
  storage_account_name = "jfl1cloudshell072721"
  container_name       = "terraform-workshop"
  key                  = "intro.tfstate"
}

}

provider "azurerm" {
  features {}
}
