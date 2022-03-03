variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "open_ports" {
  type    = list(any)
  default = ["22", "80", "443"]
}

variable "vpc_cidr" {
  default = "172.31.0.0/20"
}
