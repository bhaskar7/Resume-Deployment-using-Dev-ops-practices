
resource "aws_instance" "os1" {
  count = length(var.tf_az)
  ami =  "ami-011c99152163a87ae"
  instance_type = "t2.medium"
  key_name = "hadoop"
  availability_zone = element(var.tf_az, count.index)

  tags = {
    "name" = element(var.mytags, count.index)
  }
}

resource "null_resource" "ansible" {

depends_on = [
    aws_instance.os1
  ]

  provisioner "local-exec" {
    command = "ansible-playbook main.yml"
  }
  
}
