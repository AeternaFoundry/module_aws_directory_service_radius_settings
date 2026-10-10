variable "directory_service_radius_settings" {
  description = <<EOT
Map of directory_service_radius_settings, attributes below
Required:
    - authentication_protocol
    - directory_id
    - display_label
    - radius_port
    - radius_retries
    - radius_servers
    - radius_timeout
    - shared_secret
Optional:
    - region
    - use_same_username
EOT

  type = map(object({
    authentication_protocol = string
    directory_id            = string
    display_label           = string
    radius_port             = number
    radius_retries          = number
    radius_servers          = set(string)
    radius_timeout          = number
    shared_secret           = string
    region                  = optional(string)
    use_same_username       = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.directory_service_radius_settings : (
        length(v.display_label) >= 1 && length(v.display_label) <= 64
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.directory_service_radius_settings : (
        v.radius_port >= 1 && v.radius_port <= 65535
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.directory_service_radius_settings : (
        v.radius_retries >= 0 && v.radius_retries <= 10
      )
    ])
    error_message = "must be between 0 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.directory_service_radius_settings : (
        alltrue([for x in v.radius_servers : length(x) >= 1 && length(x) <= 256])
      )
    ])
    error_message = "must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.directory_service_radius_settings : (
        v.radius_timeout >= 1 && v.radius_timeout <= 50
      )
    ])
    error_message = "must be between 1 and 50"
  }
  validation {
    condition = alltrue([
      for k, v in var.directory_service_radius_settings : (
        length(v.shared_secret) >= 8 && length(v.shared_secret) <= 512
      )
    ])
    error_message = "must be between 8 and 512 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

