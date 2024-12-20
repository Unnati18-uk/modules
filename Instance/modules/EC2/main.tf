resource "aws_instance" "my_server" {
    ami = var.image_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = var.security_groups

    tags = {
      Name = "${var.name}-instance"
      Env = var.env
    }
  
}