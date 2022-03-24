locals {
  common_attributes = [
    
    
    {
      name = "minQuantity"
      type = {
        name = "number"
      }
      constraint = "SameForAll"
      searchable = true
      required   = false
      input_tip = {
        en = "Min purchasable quantity"

      }
      label = {
        en = "Min quantity"
        de = "Min quantity (de)"
      }
    },
    {
      name = "maxQuantity"
      type = {
        name = "number"
      }
      constraint = "SameForAll"
      searchable = true
      required   = false
      input_tip = {
        en = "if blank, will allow user to purchase up to the available inventory for the product"

      }
      label = {
        en = "Max quantity"
        de = "Max quantity (de)"
      }
    },
    {
      name = "quantityIncrement"
      type = {
        name = "number"
      }
      constraint = "SameForAll"
      searchable = true
      required   = false
      input_tip = {
        en = "Quantity increment e.g. to set buy 2,4,6,8 set value of 2. Will assume value of 1 if not set"

      }
      label = {
        en = "Quantity increment"
        de = "Quantity increment (de)"
      }
    },
    
    
    
    {
      name = "secondaryDescription"
      type = {
        name = "ltext"
      }
      constraint = "SameForAll"
      searchable = false
      required   = false
      input_tip = {
        en = "This is a Markdown field"
      }
      label = {
        en = "Secondary description"
        de = "Secondary description (de)"
      }
      input_hint = "MultiLine"
    },
    {
      name = "marketRestrictions"
      type = {
        name = "set"
        element_type = {
          name = "enum"
          values = {
            "none" : "None",
            "EU" : "EU",
            "US" : "US",
            "AT" : "AT - Austria",
            "BE" : "BE - Belgium",
            "CH" : "CH - Switzerland",
            "DE" : "DE - Germany",
            "DK" : "DK - Denmark",
            "ES" : "ES - Spain",
            "FR" : "FR - France",
            "IE" : "IE - Ireland",
            "IT" : "IT - Italy",
            "LU" : "LU - Luxembourg",
            "NL" : "NL - Netherlands",
            "PL" : "PL - Poland",
            "UK" : "UK - United Kingdom",
          }
        }
      }
      constraint = "SameForAll"
      searchable = true
      required   = false
      input_tip = {
        en = "Market restrictions - for EU, either select 'EU' or specific countries"

      }
      label = {
        en = "Market restrictions"
        de = "Market restrictions (de)"
      }
    },
    
    {
      name = "excludeExpressShiping"
      type = {
        name = "boolean"
      }
      constraint = "SameForAll"
      searchable = true
      required   = false
      input_tip = {
        en = "Exclude from express shipping"
      }
      label = {
        en = "Exclude express shipping"
        de = "Exclude express shipping (de)"
      }
    },
    {
      name = "asin"
      type = {
        name = "text"
      }
      constraint = "SameForAll"
      searchable = false
      required   = false
      input_tip = {
        en = "Amazon Standard Identification Number"
      }
      label = {
        en = "ASIN"
        de = "ASIN (de)"
      }
      input_hint = "MultiLine"
    },
  ]
}
