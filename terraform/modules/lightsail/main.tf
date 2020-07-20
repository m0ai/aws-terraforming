provider "aws" {
  version = "2.33.0"

  region = var.aws_region
}

provider "random" {
  version = "2.2"
}

resource "aws_lightsail_key_pair" "key_pair" {
  name       = "${var.name}-instance-key"
  public_key = file("${var.public_key_path}")
  //public_key = "${file("~/.ssh/.pub")}"
}

resource "aws_lightsail_instance" "instance" {
  name              = "${var.name}_lightsail_instance"
  availability_zone = var.availability_zone
  blueprint_id      = "string"
  bundle_id         = "string"
  key_pair_name     = aws_lightsail_key_pair.key_pair.name
  tags = var.tags
}

resource "aws_lightsail_static_ip" "ip" {
  name = "${var.name}-static_ip"
}

resource "aws_lightsail_static_ip_attachment" "at" {
  static_ip_name = aws_lightsail_static_ip.ip.id
  instance_name  = aws_lightsail_instance.instance.id
}
