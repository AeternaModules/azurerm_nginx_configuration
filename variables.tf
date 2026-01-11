variable "nginx_configurations" {
  description = <<EOT
Map of nginx_configurations, attributes below
Required:
    - nginx_deployment_id
    - root_file
Optional:
    - package_data
    - config_file (block):
        - content (required)
        - virtual_path (required)
    - protected_file (block):
        - content (required)
        - virtual_path (required)
EOT

  type = map(object({
    nginx_deployment_id = string
    root_file           = string
    package_data        = optional(string)
    config_file = optional(object({
      content      = string
      virtual_path = string
    }))
    protected_file = optional(object({
      content      = string
      virtual_path = string
    }))
  }))
}

