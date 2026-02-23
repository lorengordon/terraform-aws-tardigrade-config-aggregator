module "config_aggregator" {
  source = "../../"

  aggregator = {
    name = "tardigrade-config-aggregator-${random_string.this.result}"
    account_aggregation_source = {
      account_ids = [data.aws_caller_identity.current.account_id]
      all_regions = true
    }
  }
}

resource "random_string" "this" {
  length  = 6
  numeric = false
  special = false
  upper   = false
}

data "aws_caller_identity" "current" {}

output "config_aggregator" {
  value = module.config_aggregator
}
