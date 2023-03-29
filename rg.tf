# add a rg called test in uksouth
resource "azurerm_resource_grop" "test" {
  name     = "test"
  location = "uksouth"
