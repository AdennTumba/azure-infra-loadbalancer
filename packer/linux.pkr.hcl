source "azure-arm" "nginx" {
  azure_tags = {
    dept = "Engineering"
    task = "Image deployment"
  }
  # Service Principal Authentication
  client_id                         = var.client_id
  client_secret                     = var.client_secret
  subscription_id                   = var.subscription_id
  tenant_id                         = var.tenant_id

  # Source Image
  os_type                           = "Linux"
  image_offer                       = var.image_offer
  image_publisher                   = var.image_publisher
  image_sku                         = var.image_sku
  managed_image_name                = var.managed_image_name
  vm_size                           = var.vm_size

  # Destination Image
  managed_image_resource_group_name = var.managed_image_resource_group_name
  location                          = var.location
}

build {
  sources = ["source.azure-arm.nginx"]

  provisioner "shell" {
    script = "script.sh"
  }

}