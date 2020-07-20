variable "aws_region" {
  type    = string
  default = "ap-northeast-2"
}

variable "public_key_path" {
  type    = string
}

variable "tags" {
  type    = map
}

variable "name" {
  type    = string
  default = "default"
}

variable "availability_zone" {
  type = string
  default = "ap-northeast-2"
}
