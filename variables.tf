variable "aggregator" {
  description = "Object specifying the configuration of a Config Aggregator"
  type = object({
    name = string
    tags = optional(map(string), {})
    account_aggregation_source = optional(object({
      account_ids = list(string)
      all_regions = optional(bool)
      regions     = optional(list(string))
    }))
    organization_aggregation_source = optional(object({
      role_arn    = string
      all_regions = optional(bool)
      regions     = optional(list(string))
    }))
  })
  default = null
}

variable "authorization" {
  description = "Object specifying the configuration of a Config Aggregator Authorization"
  type = object({
    account_id            = string
    authorized_aws_region = string
    tags                  = optional(map(string), {})
  })
  default = null
}
