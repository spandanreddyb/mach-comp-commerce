resource "commercetools_store" "eu_store" {
  key = "eu-store"
  name = {
    en = "EU Store"
  }

  supply_channels = [commercetools_channel.eu_warehouse.key]
}

resource "commercetools_store" "us_store" {
  key = "us-store"
  name = {
    en = "US Store"
  }

  supply_channels = [commercetools_channel.us_warehouse.key]
}
