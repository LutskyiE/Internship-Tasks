

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
