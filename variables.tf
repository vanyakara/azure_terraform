variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure client secret"
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the virtual machines"
  sensitive   = true
}

variable "vms" {
  type = map(object({
    name = string
  }))
  description = "Map of virtual machines to create"
  default = {
    vm1 = {
      name = "myVM1"
    }
    vm2 = {
      name = "myVM2"
    }
  }
}
