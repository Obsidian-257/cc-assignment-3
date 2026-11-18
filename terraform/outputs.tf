output "public_ip" {
  description = "Public IP address of the Linux VM"
  value       = azurerm_public_ip.main.ip_address
}

output "vm_name" {
  description = "Name of the deployed virtual machine"
  value       = azurerm_linux_virtual_machine.main.name
}

output "ssh_command" {
  description = "Command to connect to the VM"
  value       = "ssh ${var.admin_username}@${azurerm_public_ip.main.ip_address}"
}
