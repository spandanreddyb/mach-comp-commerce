variable "ct_project_key" {
  type        = string
  description = "commercetools project key"
}

variable "ct_api_url" {
  type        = string
  description = "commercetools API URL"
}

variable "ct_auth_url" {
  type        = string
  description = "commercetools Auth URL"
}

variable "ct_stores" {
  type = map(object({
    key       = string
    variables = map(string)
    secrets   = map(string)
  }))
  default = {}
}