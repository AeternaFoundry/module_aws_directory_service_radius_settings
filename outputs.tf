output "directory_service_radius_settings_id" {
  description = "Map of id values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directory_service_radius_settings_authentication_protocol" {
  description = "Map of authentication_protocol values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.authentication_protocol if v.authentication_protocol != null && length(v.authentication_protocol) > 0 }
}
output "directory_service_radius_settings_directory_id" {
  description = "Map of directory_id values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.directory_id if v.directory_id != null && length(v.directory_id) > 0 }
}
output "directory_service_radius_settings_display_label" {
  description = "Map of display_label values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.display_label if v.display_label != null && length(v.display_label) > 0 }
}
output "directory_service_radius_settings_radius_port" {
  description = "Map of radius_port values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.radius_port if v.radius_port != null }
}
output "directory_service_radius_settings_radius_retries" {
  description = "Map of radius_retries values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.radius_retries if v.radius_retries != null }
}
output "directory_service_radius_settings_radius_servers" {
  description = "Map of radius_servers values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.radius_servers if v.radius_servers != null && length(v.radius_servers) > 0 }
}
output "directory_service_radius_settings_radius_timeout" {
  description = "Map of radius_timeout values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.radius_timeout if v.radius_timeout != null }
}
output "directory_service_radius_settings_region" {
  description = "Map of region values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "directory_service_radius_settings_shared_secret" {
  description = "Map of shared_secret values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.shared_secret if v.shared_secret != null && length(v.shared_secret) > 0 }
  sensitive   = true
}
output "directory_service_radius_settings_use_same_username" {
  description = "Map of use_same_username values across all directory_service_radius_settings, keyed the same as var.directory_service_radius_settings"
  value       = { for k, v in aws_directory_service_radius_settings.directory_service_radius_settings : k => v.use_same_username if v.use_same_username != null }
}

