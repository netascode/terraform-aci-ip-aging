<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-ip-aging/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-ip-aging/actions/workflows/test.yml)

# Terraform ACI IP Aging Module

Manages ACI IP Aging

Location in GUI:
`System` » `System Settings` » `Endpoint Controls` » `IP Aging`

## Examples

```hcl
module "aci_ip_aging" {
  source = "netascode/ip-aging/aci"

  admin_state = true
}

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 0.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_state"></a> [admin\_state](#input\_admin\_state) | Admin state. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `epIpAgingP` object. |

## Resources

| Name | Type |
|------|------|
| [aci_rest.epIpAgingP](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
<!-- END_TF_DOCS -->