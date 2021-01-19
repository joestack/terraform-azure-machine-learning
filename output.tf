output "jumphost_ip" {
  value = azurerm_public_ip.jumphost_public_ip.ip_address
}
output "machine_learning_workspace_name" {
  value = azurerm_machine_learning_workspace.aml_ws.name
}