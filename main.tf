provider "aws" {
}

resource "null_resource" "dependencies" {
  count = var.create_resolver_rule_association ? 1 : 0

  triggers = {
    this = join(",", var.dependencies)
  }
}

resource "aws_route53_resolver_rule_association" "this" {
  count = var.create_resolver_rule_association ? 1 : 0

  resolver_rule_id = var.resolver_rule_id
  vpc_id           = var.vpc_id

  depends_on = [null_resource.dependencies]
}
