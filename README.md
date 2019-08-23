# terraform-aws-tardigrade-route53-rr-association

Terraform module to associate route53 resolver rules

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_resolver\_rule\_association | Controls whether to create the Route53 resolver rule association | string | `"true"` | no |
| dependencies | List of resource dependencies to force terraform to wait until they are done | list | `<list>` | no |
| resolver\_rule\_id | ID of the rule to associate to the VPC | string | `""` | no |
| vpc\_id | ID of the VPC that will be associated to the rule | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_route53\_resolver\_rule\_association | ID of the resolver rule association |

