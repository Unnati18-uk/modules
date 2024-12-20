variable "region" {
    default = "ap-southeast-2"
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
variable "security_groups" {
    default = ["default"]
}
variable "env" {
    default = "dev"
}
variable "name" {
    default = "module"
}
