resource "azurerm_virtual_network" "TerraformNetwork" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.Terraform.name
  address_space       = ["10.0.0.0/16"]

  tags = var.tags

}

resource "azurerm_subnet" "TerraformSubnet" {
    name =var.subnetname
    resource_group_name = azurerm_resource_group.Terraform.name

    virtual_network_name = azurerm_virtual_network.TerraformNetwork

    address_prefixes = ["10.0.2.0/24"]
    tags = var.tags
}