provider aws {
  region = "us-east-1"
}

data "terraform_remote_state" "prereq" {
  backend = "local"
  config = {
    path = "prereq/terraform.tfstate"
  }
}

module "create_rr_association" {
  source = "../../"
  providers = {
    aws = aws
  }

  create_resolver_rule_association = true
  vpc_id                           = data.terraform_remote_state.prereq.outputs.vpc_id
  resolver_rule_id                 = data.terraform_remote_state.prereq.outputs.resolver_rule_id
}
