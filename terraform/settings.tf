resource "commercetools_project_settings" "project_settings" {
  name       = var.ct_project_key
  currencies = ["EUR", "GBP", "USD", "DKK", "PLN"]
  languages  = ["EN", "DE", "FR", "NL", "IT", "PL", "ES"]
  countries  = ["US", "IE", "DK", "GB", "LU", "DE", "NL", "FR", "BE", "IT", "PL", "AT", "CH", "ES"]
}
