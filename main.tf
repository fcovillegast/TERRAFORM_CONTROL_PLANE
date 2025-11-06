module "subnets" {
  source = "git::https://github.com/fcovillegast/TERRAFORM_AWS_SUBNET.git?ref=main"
  count = length(var.cidr_list)

  vpc_id = var.vpc_id
  name_prefix = var.name_prefix
  availability_zone = var.availability_zone
  tags = var.tags
  cidr_block = var.cidr_list[count.index]
}