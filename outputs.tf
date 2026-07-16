output "nginx_configurations_id" {
  description = "Map of id values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "nginx_configurations_config_file" {
  description = "Map of config_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.config_file if v.config_file != null && length(v.config_file) > 0 }
}
output "nginx_configurations_nginx_deployment_id" {
  description = "Map of nginx_deployment_id values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.nginx_deployment_id if v.nginx_deployment_id != null && length(v.nginx_deployment_id) > 0 }
}
output "nginx_configurations_package_data" {
  description = "Map of package_data values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.package_data if v.package_data != null && length(v.package_data) > 0 }
}
output "nginx_configurations_protected_file" {
  description = "Map of protected_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.protected_file if v.protected_file != null && length(v.protected_file) > 0 }
  sensitive   = true
}
output "nginx_configurations_root_file" {
  description = "Map of root_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.root_file if v.root_file != null && length(v.root_file) > 0 }
}

