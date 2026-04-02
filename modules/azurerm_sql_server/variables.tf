variable "sql_server_detail" {
  type = map(object({
    sql_server_name     = string
    rg_name             = string
    location            = string
    version             = string
    admin_username      = string
    admin_password      = string
    minimum_tls_version = string
    tags                = map(string)
  }))
}
