resource "commercetools_channel" "us_warehouse" {
  key   = "us-warehouse-channel"
  roles = ["InventorySupply"]
  name = {
    en = "US Warehouse"
  }
  description = {
    en = "For any stock shipped within US"
  }
}

resource "commercetools_channel" "eu_warehouse" {
  key   = "eu-warehouse-channel"
  roles = ["InventorySupply"]
  name = {
    en = "EU Warehouse"
  }
  description = {
    en = "For any stock shipped within EU"
  }
}
