locals {
  color_attributes = [{
    name = "color"
    type = {
      name = "lenum"

      localized_value = [
        for color in local.colors : {
          key   = color.key
          label = color.label
        }
      ]
    }

    constraint = "CombinationUnique"
    searchable = true
    required   = false
    input_tip = {
      en = "Product color"

    }
    label = {
      en = "Color"
      de = "Color (de)"
    }
  }]

  apparel_size_attributes = [
    {
      name = "apparelAdultSize"
      type = {
        name = "lenum"
        localized_value = [
          {
            key = "xs"
            label = {
              en = "Extra Small"
            }
          },
          {
            key = "small"
            label = {
              en = "Small"
            }
          },
          {
            key = "medium"
            label = {
              en = "Medium"
            }
          },
          {
            key = "large"
            label = {
              en = "Large"
            }
          },
          {
            key = "xl"
            label = {
              en = "X-Large"
            }
          },
          {
            key = "xxl"
            label = {
              en = "XX-Large"
            }
          }
        ]
      }
      constraint = "CombinationUnique"
      searchable = true
      required   = false
      input_tip = {
        en = "Apparel adult size"

      }
      label = {
        en = "Apparel adult size"
        de = "Apparel adult size (de)"
      }
    },
    {
      name = "apparelYouthSize"
      type = {
        name = "lenum"
        localized_value = [
          {
            key = "6MO"
            label = {
              en = "6MO"
            }
          },
          {
            key = "12MO"
            label = {
              en = "12MO"
            }
          },
          {
            key = "18MO"
            label = {
              en = "18MO"
            }
          },
          {
            key = "24MO"
            label = {
              en = "24MO"
            }
          },
          {
            key = "2t"
            label = {
              en = "2T"
            }
          },
          {
            key = "3t"
            label = {
              en = "3T"
            }
          },
          {
            key = "4t"
            label = {
              en = "4T"
            }
          },
          {
            key = "5/6t"
            label = {
              en = "5/6T"
            }
          },
          {
            key = "xs"
            label = {
              en = "Extra Small"
            }
          },
          {
            key = "small"
            label = {
              en = "Small"
            }
          },
          {
            key = "medium"
            label = {
              en = "Medium"
            }
          },
          {
            key = "large"
            label = {
              en = "Large"
            }
          },
          {
            key = "xl"
            label = {
              en = "X-Large"
            }
          },
          {
            key = "xxl"
            label = {
              en = "XX-Large"
            }
          }
        ]
      }
      constraint = "CombinationUnique"
      searchable = true
      required   = false
      input_tip = {
        en = "Apparel youth size"

      }
      label = {
        en = "Apparel youth size"
        de = "Apparel youth size (de)"
      }
    },
    {
      name = "apparelAgeGroup"
      type = {
        name = "lenum"
        localized_value = [
          {
            key = "youth"
            label = {
              en = "Youth"
            }
          },
          {
            key = "adult"
            label = {
              en = "Adult"
            }
          },
        ]
      }
      constraint = "CombinationUnique"
      searchable = true
      required   = false
      label = {
        en = "Apparel size age group"
        de = "Apparel size age group (de)"
      }
    }
  ]
}
