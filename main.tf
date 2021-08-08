resource "aci_rest" "epIpAgingP" {
  dn         = "uni/infra/ipAgingP-default"
  class_name = "epIpAgingP"
  content = {
    adminSt = var.admin_state == true ? "enabled" : "disabled"
  }
}
