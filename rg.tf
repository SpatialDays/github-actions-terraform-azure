# add a rg called test in uksouth
resource "azurerm_resource_group" "test" {
  name     = "test"
  location = "uksouth"
}

resource "azurerm_resource_group" "misc-rg"{
  name = "misc-rg"
  location = "uksouth"
}