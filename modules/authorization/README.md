# terraform-aws-tardigrade-config-aggregator/authorization

Terraform module to create an AWS Config Aggregator Authorization.


<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 6 |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Account ID where the authorized aggregator exists | `string` | n/a | yes |
| <a name="input_authorized_aws_region"></a> [authorized\_aws\_region](#input\_authorized\_aws\_region) | Region where the authorized aggregator exists | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to apply to the Config Aggregator Authorization | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_authorization"></a> [authorization](#output\_authorization) | Object with the Config Aggregate Authorization attributes |

<!-- END TFDOCS -->
