resource "commercetools_custom_object" "homepagetitle" {
    container = "pumademo-custom-container"
    key = "pumademo-custom-webapp"
    value = jsonencode({
      var.variables.HOME_PAGE_TITLE
    })
}