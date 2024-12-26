variable "region" {
    default = "ap-southeast-2"
}
variable "vpc_cidr" {
    default = "10.0.0.0/16"
}
variable "name" {
   default = "terra"
}
variable "az1" {
    default =  "ap-southeast-2a"
}
variable "az2" {
    default = "ap-southeast-2b"
}
variable "private_sub_a_cidr" {
    default = "10.0.0.0/20"
}
variable "private_sub_b_cidr" {
    default = "10.0.16.0/20"
}
variable "public_sub_a_cidr" {
    default = "10.0.32.0/20"
}
variable "public_sub_b_cidr" {
    default = "10.0.48.0/20"
}
variable "image_id" {
    default = "ami-003f5a76758516d1e"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "key_name" {
    default = "sydneykay"
}
