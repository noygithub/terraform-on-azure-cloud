# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.60" # Optional but recommended in production
    }    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = "true"
  features {}
}

# Create Resource Group 
resource "azurerm_resource_group" "elbe_demo_rg1" {
  location = "australiasoutheast"
  name = "elbe-demo-rg1"  
}
