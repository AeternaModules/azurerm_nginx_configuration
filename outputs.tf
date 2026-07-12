output "nginx_configurations_id" {
  description = "Map of id values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.id }
}
output "nginx_configurations_config_file" {
  description = "Map of config_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.config_file }
}
output "nginx_configurations_nginx_deployment_id" {
  description = "Map of nginx_deployment_id values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.nginx_deployment_id }
}
output "nginx_configurations_package_data" {
  description = "Map of package_data values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.package_data }
}
output "nginx_configurations_protected_file" {
  description = "Map of protected_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.protected_file }
  sensitive   = true
}
output "nginx_configurations_root_file" {
  description = "Map of root_file values across all nginx_configurations, keyed the same as var.nginx_configurations"
  value       = { for k, v in azurerm_nginx_configuration.nginx_configurations : k => v.root_file }
}

