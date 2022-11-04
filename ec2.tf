resource "aws_instance" "web" {
  ami           = var.AMI_ID
  instance_type = "t3.micro"
  monitoring = true
  ebs_optimized = true
  metadata_options {
    http_endpoint = "enabled"
    http_tokens = "required"
  }
  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "airbnb-web-server"
  }
}

resource "s3_Bucket" "airbnb-s3-bucket" {
  
    tags = {
    Name = "airbnb-s3-bucket"
  }
  
}