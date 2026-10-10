resource "auth0_form" "forms" {
  for_each = var.forms

  name         = each.value.name
  ending       = each.value.ending
  nodes        = each.value.nodes
  start        = each.value.start
  style        = each.value.style
  translations = each.value.translations

  dynamic "languages" {
    for_each = each.value.languages != null ? each.value.languages : []
    content {
      default = languages.value.default
      primary = languages.value.primary
    }
  }

  dynamic "messages" {
    for_each = each.value.messages != null ? each.value.messages : []
    content {
      custom = messages.value.custom
      errors = messages.value.errors
    }
  }
}

