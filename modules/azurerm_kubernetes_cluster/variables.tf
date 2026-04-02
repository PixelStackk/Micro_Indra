variable "aks_detail" {
  description = "Details for AKS clusters"
  type = map(object({
    aks_name   = string
    location   = string
    rg_name    = string
    dns_prefix = string

    default_node_pool = object({
      node_name  = string
      node_count = number
      vm_size    = string
    })

    identity = object({
      type = string
    })

    tags = map(string)
  }))
}
