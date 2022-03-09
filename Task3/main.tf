provider "aws" {
  region = var.region

}


# receaving ubuntu ami id
data "aws_ami" "latest_ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

# receaving centOS ami id
data "aws_ami" "latest_centos" {
  owners      = ["374168611083"]
  most_recent = true
  filter {
    name   = "name"
    values = ["eu-central-1 image for x86_64 CentOS_7"]
  }
}

resource "aws_instance" "Ubuntu" {
  ami                    = data.aws_ami.latest_ubuntu.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ubuntu_sg.id]
  subnet_id              = aws_subnet.public_subnet.id
  user_data              = file("userdata.txt")

  tags = {
    Name    = "Ubuntu web server"
    Project = "Task3"
  }
}

resource "aws_instance" "CentOS" {
  ami                    = data.aws_ami.latest_centos.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.centos_sg.id]
  subnet_id              = aws_subnet.private_subnet.id
  tags = {
    Name    = "CentOS server"
    Project = "Task3"
  }
}
