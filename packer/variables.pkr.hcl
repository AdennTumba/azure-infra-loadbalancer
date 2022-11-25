variable "client_id" {
  type        = string
  description = "Azure Service Principal App ID."
  default     = env("ARM_CLIENT_ID")
  sensitive   = true
}

variable "client_secret" {
  type        = string
  description = "Azure Service Principal Secret."
  default     = env("ARM_CLIENT_SECRET")
  sensitive   = true
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID."
  default     = env("ARM_SUBSCRIPTION_ID")
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID."
  default     = env("ARM_TENANT_ID")
  sensitive   = true
}

variable "image_offer" {
  type        = string
  description = ""
  default     = "UbuntuServer"
}

variable "image_publisher" {
  type        = string
  description = ""
  default     = "Canonical"
}

variable "image_sku" {
  type        = string
  description = ""
  default     = "18.04-LTS"
}

variable "managed_image_name" {
  type        = string
  description = ""
  default     = "packer-ubuntu-20-{{isotime `2006-01-02`}}"
}

variable "vm_size" {
  type        = string
  description = ""
  default     = "Standard_B1s"
}

variable "managed_image_resource_group_name" {
  type        = string
  description = ""
  default     = "packer-artifacts-rg"
}

variable "location" {
  type        = string
  description = ""
  default     = "East US"
}