resource "commercetools_product_type" "shoes_product_type" {
  name        = "Shoes"
  description = "Shoes"
  key         = "shoes"

  dynamic "attribute" {
    for_each = concat(
      local.common_attributes, 
      local.color_attributes,       
    )

    content {
      name       = attribute.value.name
      label      = attribute.value.label
      constraint = lookup(attribute.value, "constraint", null)
      required   = lookup(attribute.value, "required", null)
      searchable = lookup(attribute.value, "searchable", null)
      input_tip  = lookup(attribute.value, "input_tip", {})
      input_hint = lookup(attribute.value, "input_hint", null)

      type {
        name           = attribute.value.type.name
        values         = lookup(attribute.value.type, "values", null)
        type_reference = lookup(attribute.value.type, "type_reference", null)
        dynamic "element_type" {
          # Make terraform understand that there will only be 0 or 1 element_type elements in practice. Otherwise, there will be an error
          for_each = lookup(attribute.value["type"], "element_type", {}) == {} ? [] : [1]
          content {
            name              = attribute.value.type.element_type.name
            values            = lookup(attribute.value.type.element_type, "values", null)
            reference_type_id = lookup(attribute.value.type.element_type, "reference_type_id", null)
          }
        }

        dynamic "localized_value" {
          for_each = flatten(lookup(attribute.value.type, "localized_value", []))
          content {
            key   = localized_value.value.key
            label = localized_value.value.label
          }
        }
      }
    }
  }
}

resource "commercetools_product_type" "shirts_product_type" {
  name        = "Shirts"
  description = "Shirts"
  key         = "shirts"

  dynamic "attribute" {
    for_each = concat(
      local.common_attributes, 
      local.apparel_size_attributes,
      local.color_attributes
    )

    content {
      name       = attribute.value.name
      label      = attribute.value.label
      constraint = lookup(attribute.value, "constraint", null)
      required   = lookup(attribute.value, "required", null)
      searchable = lookup(attribute.value, "searchable", null)
      input_tip  = lookup(attribute.value, "input_tip", {})
      input_hint = lookup(attribute.value, "input_hint", null)
      type {
        name           = attribute.value.type.name
        values         = lookup(attribute.value.type, "values", null)
        type_reference = lookup(attribute.value.type, "type_reference", null)
        dynamic "element_type" {
          # Make terraform understand that there will only be 0 or 1 element_type elements in practice. Otherwise, there will be an error
          for_each = lookup(attribute.value["type"], "element_type", {}) == {} ? [] : [1]
          content {
            name              = attribute.value.type.element_type.name
            values            = lookup(attribute.value.type.element_type, "values", null)
            reference_type_id = lookup(attribute.value.type.element_type, "reference_type_id", null)
          }
        }

        dynamic "localized_value" {
          for_each = flatten(lookup(attribute.value.type, "localized_value", []))
          content {
            key   = localized_value.value.key
            label = localized_value.value.label
          }
        }
      }
    }
  }
}

resource "commercetools_product_type" "accessories_product_type" {
  name        = "Accessories"
  description = "Accessories"
  key         = "accessories"

  dynamic "attribute" {
    for_each = concat(
      local.common_attributes, 
      local.color_attributes      
    )

    content {
      name       = attribute.value.name
      label      = attribute.value.label
      constraint = lookup(attribute.value, "constraint", null)
      required   = lookup(attribute.value, "required", null)
      searchable = lookup(attribute.value, "searchable", null)
      input_tip  = lookup(attribute.value, "input_tip", {})
      input_hint = lookup(attribute.value, "input_hint", null)
      type {
        name           = attribute.value.type.name
        values         = lookup(attribute.value.type, "values", null)
        type_reference = lookup(attribute.value.type, "type_reference", null)
        dynamic "element_type" {
          # Make terraform understand that there will only be 0 or 1 element_type elements in practice. Otherwise, there will be an error
          for_each = lookup(attribute.value["type"], "element_type", {}) == {} ? [] : [1]
          content {
            name              = attribute.value.type.element_type.name
            values            = lookup(attribute.value.type.element_type, "values", null)
            reference_type_id = lookup(attribute.value.type.element_type, "reference_type_id", null)
          }
        }

        dynamic "localized_value" {
          for_each = flatten(lookup(attribute.value.type, "localized_value", []))
          content {
            key   = localized_value.value.key
            label = localized_value.value.label
          }
        }
      }
    }
  }
}

