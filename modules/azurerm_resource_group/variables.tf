variable "rg_detail" {
type = map(object({
  rg_name     = string
  rg_location = string
  rg_tags     = map(string)
}))
}