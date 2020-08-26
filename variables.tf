variable "dependencies" {
  description = "List of resource dependencies to force terraform to wait until they are done"
  default     = []
  type        = list(string)
}

variable "resolver_rule_id" {
  description = "ID of the rule to associate to the VPC"
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "ID of the VPC that will be associated to the rule"
  type        = string
  default     = null
}

