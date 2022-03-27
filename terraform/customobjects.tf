resource "commercetools_custom_object" "title_custom_object" {
    container = "pumademo-custom-container"
    key = "pumademo-custom-webapp"
    value = variables.homepage_title
}