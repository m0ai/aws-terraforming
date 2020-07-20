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

variable "bundle_id" {
  type = string
  default = "nano_2.0"
}

variable "blueprint_id" {
  type = string
  default = "amazon_linux_2018_03_0_2"
}