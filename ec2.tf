resource "aws_instance" "web" {
  ami           = var.AMI_ID
  instance_type = "t3.micro"

  tags = {
    Name = "airbnb-web-server"
  }
}