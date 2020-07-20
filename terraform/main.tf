
module "lightsail" {
  source = "./modules/lightsail"
  public_key_path  = ""
  name = "moai"
  availability_zone = "ap-northeast-2"
  tags = {
    Terraform = "true"
    User      = "moai"
  }
}