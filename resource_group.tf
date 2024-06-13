resource "azurerm_resource_group" "Terraform" {
  name     = var.resourceGroupName
  location = var.location
  tags =  var.tags
  }