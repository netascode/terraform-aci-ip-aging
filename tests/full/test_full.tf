terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }

    aci = {
      source  = "netascode/aci"
      version = ">=0.2.0"
    }
  }
}

module "main" {
  source = "../.."

  admin_state = true
}

data "aci_rest" "epIpAgingP" {
  dn = "uni/infra/ipAgingP-default"

  depends_on = [module.main]
}

resource "test_assertions" "epIpAgingP" {
  component = "epIpAgingP"

  equal "adminSt" {
    description = "adminSt"
    got         = data.aci_rest.epIpAgingP.content.adminSt
    want        = "enabled"
  }
}
