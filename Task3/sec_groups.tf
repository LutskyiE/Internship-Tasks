resource "aws_security_group" "ubuntu_sg" {
  name        = "ubuntu_security_group"
  description = "Ubuntu webserver security group"
  vpc_id      = aws_vpc.aws_t3_vpc.id

  dynamic "ingress" {
    for_each = var.open_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "centos_sg" {
  name   = "centos_security_group"
  vpc_id = aws_vpc.aws_t3_vpc.id
  dynamic "ingress" {
    for_each = var.open_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["172.31.1.0/24"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["172.31.1.0/24"]
  }
}
