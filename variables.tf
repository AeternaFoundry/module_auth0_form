variable "forms" {
  description = <<EOT
Map of forms, attributes below
Required:
    - name
Optional:
    - ending
    - nodes
    - start
    - style
    - translations
    - languages (block):
        - default (optional)
        - primary (optional)
    - messages (block):
        - custom (optional)
        - errors (optional)
EOT

  type = map(object({
    name         = string
    ending       = optional(string)
    nodes        = optional(string)
    start        = optional(string)
    style        = optional(string)
    translations = optional(string)
    languages = optional(list(object({
      default = optional(string)
      primary = optional(string)
    })))
    messages = optional(list(object({
      custom = optional(string)
      errors = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.forms : (
        v.translations == null || (can(jsondecode(v.translations)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.forms : (
        v.style == null || (can(jsondecode(v.style)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.forms : (
        v.start == null || (can(jsondecode(v.start)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.forms : (
        v.nodes == null || (can(jsondecode(v.nodes)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.forms : (
        v.ending == null || (can(jsondecode(v.ending)))
      )
    ])
    error_message = "must be valid JSON"
  }
}

