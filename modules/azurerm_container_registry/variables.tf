variable "acr_detail" {
  type = map(object({
    acr_name                = string
    rg_name = string
    location            = string
    sku                 = string
    admin_enabled       = bool
    tags                = map(string)
  }))
}

