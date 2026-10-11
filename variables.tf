variable "cloud_stack_service_account_tokens" {
  description = <<EOT
Map of cloud_stack_service_account_tokens, attributes below
Required:
    - name
    - service_account_id
    - stack_slug
Optional:
    - seconds_to_live
EOT

  type = map(object({
    name               = string
    service_account_id = string
    stack_slug         = string
    seconds_to_live    = optional(number)
  }))
}

