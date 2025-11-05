module "subnets" {
  source = "git::https://github.com/fcovillegast/TERRAFORM_AWS_SUBNET.git?ref=v1.1.1"
  count = var.cidr_list

  vpc_id = var.vpc_id
  name_prefix = var.name_prefix
  availability_zone = var.availability_zone
  tags = var.tags
}