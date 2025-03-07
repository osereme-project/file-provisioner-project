resource "aws_instance" "project_server_1" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
  vpc_security_group_ids = ["aws_security_group.project_server_1_sg"]
  user_data              = data.template_file.user_data.rendered

  # Using variables
    instance_type = var.instance_type
    instance_type = "t2.micro"


  # Local
  #  Name = "project_server_1-${local.project_name}"

  tags = {
    Name = "project_server_1"
  }
}
