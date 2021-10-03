module "aci_ip_aging" {
  source  = "netascode/ip-aging/aci"
  version = ">= 0.0.1"

  admin_state = true
}
