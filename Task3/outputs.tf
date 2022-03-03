/*data "aws_instance" "webserver_ip" {
  tags = {
    Name = "Ubuntu web server"
  }
}
*/
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

output "latest_centos_ami_id" {
  value = data.aws_ami.latest_centos.id
}
output "latest_centos_ami_name" {
  value = data.aws_ami.latest_centos.name
}

/*output "private_webserver_ip" {
  value = data.aws_instance.webserver_ip.private_ip
}
*/
output "private_webserver_ip" {
  value = aws_instance.Ubuntu.private_ip
}

output "latest_ubuntu_ami_id" {
  value = data.aws_ami.latest_ubuntu.id
}
output "latest_ubuntu_ami_name" {
  value = data.aws_ami.latest_ubuntu.name
}
