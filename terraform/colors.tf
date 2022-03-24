locals {
  colors = [
    {
      key = "red"
      hex = "ff0000"
      label = {
        en = "Red"
      }
    },
    {
      key = "orange"
      hex = "ffa500"
      label = {
        en = "Orange"
      }
    },
    {
      key = "yellow"
      hex = "ffff00"
      label = {
        en = "Yellow"
      }
    },
    {
      key = "blue"
      hex = "0000ff"
      label = {
        en = "Blue"
      }
    },
    {
      key = "green"
      hex = "008000"
      label = {
        en = "Green"
      }
    },
    {
      key = "brown"
      hex = "a52a2a"
      label = {
        en = "Brown"
      }
    },
    {
      key = "grey"
      hex = "999999"
      label = {
        en = "Grey"
      }
    },
    {
      key = "black"
      hex = "000000"
      label = {
        en = "Black"
      }
    },
    {
      key = "pink"
      hex = "ff51a8"
      label = {
        en = "Pink"
      }
    },
    {
      key = "white"
      hex = "ffffff"
      label = {
        en = "White"
      }
    },
    {
      key = "purple"
      hex = "800080"
      label = {
        en = "Purple"
      }
    },
    {
      key = "silver"
      hex = "c0c0c0"
      label = {
        en = "Silver"
      }
    },
    {
      key = "gold"
      hex = "ffd700"
      label = {
        en = "Gold"
      }
    },
    {
      key = "dark-purple"
      hex = "5a2e5a"
      label = {
        en = "Dark-Purple"
      }
    },
    {
      key = "light-blue"
      hex = "8fb1ff"
      label = {
        en = "Light-Blue"
      }
    },
    {
      key = "turquoise"
      hex = "40e0d0"
      label = {
        en = "Turquoise"
      }
    }
  ]
}


resource "commercetools_custom_object" "colors" {
  container = "product_attribute_options"
  key = "color_hex_codes"
  value = jsonencode({
    for color in local.colors : color.key => color.hex
  })
}
