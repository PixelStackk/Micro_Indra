variable "sqldb_detail" {
  description = "SQL Database configuration details"
  type = map(object({
    name          = string
    sqlserver_key = string
    collation     = string
    license_type  = string
    max_size_gb   = number
    sku_name      = string
    enclave_type  = string
    tags          = map(string)
  }))
}

variable "server_id" {
  description = "Map of SQL Server IDs to attach databases"
  type        = map(string)
}
