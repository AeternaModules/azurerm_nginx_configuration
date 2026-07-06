output "nginx_configurations" {
  description = "All nginx_configuration resources"
  value       = azurerm_nginx_configuration.nginx_configurations
  sensitive   = true
}
output "nginx_configurations_config_file" {
  description = "List of config_file values across all nginx_configurations"
  value       = [for k, v in azurerm_nginx_configuration.nginx_configurations : v.config_file]
}
output "nginx_configurations_nginx_deployment_id" {
  description = "List of nginx_deployment_id values across all nginx_configurations"
  value       = [for k, v in azurerm_nginx_configuration.nginx_configurations : v.nginx_deployment_id]
}
output "nginx_configurations_package_data" {
  description = "List of package_data values across all nginx_configurations"
  value       = [for k, v in azurerm_nginx_configuration.nginx_configurations : v.package_data]
}
output "nginx_configurations_protected_file" {
  description = "List of protected_file values across all nginx_configurations"
  value       = [for k, v in azurerm_nginx_configuration.nginx_configurations : v.protected_file]
  sensitive   = true
}
output "nginx_configurations_root_file" {
  description = "List of root_file values across all nginx_configurations"
  value       = [for k, v in azurerm_nginx_configuration.nginx_configurations : v.root_file]
}

