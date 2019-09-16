# Route53 Resolver Rule Association
output "aws_route53_resolver_rule_association" {
  description = "ID of the resolver rule association"
  value       = join("", aws_route53_resolver_rule_association.this.*.id)
}

