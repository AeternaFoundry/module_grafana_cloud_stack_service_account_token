resource "grafana_cloud_stack_service_account_token" "cloud_stack_service_account_tokens" {
  for_each = var.cloud_stack_service_account_tokens

  name               = each.value.name
  service_account_id = each.value.service_account_id
  stack_slug         = each.value.stack_slug
  seconds_to_live    = each.value.seconds_to_live
}

