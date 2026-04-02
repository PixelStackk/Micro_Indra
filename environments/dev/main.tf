locals {
  common_tags = {
    "ManagedBy"   = "Terraform"
    "Owner"       = "TodoAppTeam"
    "Environment" = "dev"
  }
}

module "rg" {
  source    = "../../modules/azurerm_resource_group"
  rg_detail = var.rg_details
}

module "acr" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_container_registry"
  acr_detail = var.acr_details
}

module "sql_server" {
  depends_on        = [module.rg]
  source            = "../../modules/azurerm_sql_server"
  sql_server_detail = var.sql_server_details
}

module "sql_db" {
  depends_on   = [module.sql_server]
  source       = "../../modules/azurerm_sql_database"
  server_id    = module.sql_server.server_id
  sqldb_detail = var.sqldb_details
}

module "aks" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_kubernetes_cluster"
  aks_detail = var.aks_details
}

module "pip" {
  source     = "../../modules/azurerm_public_ip"
  depends_on = [module.rg]
  pip_detail = var.pip_details
}

module "key_vault" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_key_vault"
  kv_detail  = var.kv_details
}

module "storage_account" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_storage_account"
  stg_detail = var.stg_details
}
