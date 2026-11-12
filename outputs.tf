output "forms_id" {
  description = "Map of id values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.id }
}
output "forms_ending" {
  description = "Map of ending values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.ending }
}
output "forms_languages" {
  description = "Map of languages values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.languages }
}
output "forms_messages" {
  description = "Map of messages values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.messages }
}
output "forms_name" {
  description = "Map of name values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.name }
}
output "forms_nodes" {
  description = "Map of nodes values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.nodes }
}
output "forms_start" {
  description = "Map of start values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.start }
}
output "forms_style" {
  description = "Map of style values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.style }
}
output "forms_translations" {
  description = "Map of translations values across all forms, keyed the same as var.forms"
  value       = { for k, v in auth0_form.forms : k => v.translations }
}

