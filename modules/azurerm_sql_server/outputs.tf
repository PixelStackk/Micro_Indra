output "server_id" {
  value = {for keys , sqlserver in azurerm_mssql_server.sql_server: keys => sqlserver.id}
}
