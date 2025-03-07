data "template_file" "user_data" {
  template = file("${path.root}/userdata.yaml")
}