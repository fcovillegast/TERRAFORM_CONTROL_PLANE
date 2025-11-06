

variable "vpc_id" {
    type = string
    default = null
    description = "vpc_id"
}

variable "cidr_list" {
  description = "Los cidrs por donde se moverá el control plane"
  type = list(object({
    cidr=string,
    zone=string
  }))
  default = []
}

variable "name_prefix" {
  type = string
  default = null
  description = "name_prefix"
}

variable "tags" {
  type = object({})
  description = "The tags"

  default = {
    "Object" = "subnet"
  }
}