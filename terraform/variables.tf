variable "project_name" {
  description = "Prefix used for Azure resource names"
  type        = string
  default     = "cc-assignment-3"
}

variable "location" {
  description = "Azure region verified for this subscription"
  type        = string
  default     = "swedencentral"
}

variable "vm_size" {
  description = "Verified B-series virtual machine size"
  type        = string
  default     = "Standard_B2ts_v2"
}

variable "admin_username" {
  description = "Linux administrator username"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Local path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "admin_source_cidr" {
  description = "Public IP CIDR allowed to connect over SSH"
  type        = string
}

variable "vnet_address_space" {
  description = "Address range for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefix" {
  description = "Address range for the VM subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
