variable "create_resolver_rule_association" {
  description = "Controls whether to create the Route53 resolver rule association"
  default     = true
}

variable "dependencies" {
  description = "List of resource dependencies to force terraform to wait until they are done"
  default     = []
  type        = "list"
}

variable "resolver_rule_id" {
  description = "ID of the rule to associate to the VPC"
  default     = ""
  type        = "string"
}

variable "vpc_id" {
  description = "ID of the VPC that will be associated to the rule"
  default     = ""
  type        = "string"
}
