
variable "pip_detail" {
  description = "Public IP configuration details"
  type = map(object({
    pip_name          = string
    rg_name           = string
    location          = string
    allocation_method = string
    sku               = string
    tags              = map(string)
  }))
}
