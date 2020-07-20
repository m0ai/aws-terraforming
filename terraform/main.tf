terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aws-terraforming"

    workspaces {
      name = "aws-terraforming"
    }
  }


module "lightsail" {
  source = "./modules/lightsail"
  public_key_path  = "../docs/keys/moai-pem.pub"
  name = "moai"

  bundle_id = "nano_2.0"
  blueprint_id = "ubuntu_18_04"

  availability_zone = "ap-northeast-2a"
  tags = {
    Terraform = "true"
    User      = "moai"
  }
}