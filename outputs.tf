output "public_ips" {
  description = "Public IP addresses of the VMs"
  value = {
    for k, ip in azurerm_public_ip.public_ip :
    k => ip.ip_address
  }
}
