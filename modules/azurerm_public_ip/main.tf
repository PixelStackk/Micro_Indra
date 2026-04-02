resource "azurerm_public_ip" "public_ip" {
  for_each = var.pip_detail
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
  tags                = each.value.tags
}
