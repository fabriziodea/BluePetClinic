provider "aws" {
    version                 = "~> 2.0"
    region                  = "eu-west-2"
}
resource "aws_instance" "nginx-VM" {
    ami           = "ami-0f9124f7452cdb2a6"
    instance_type = "t2.micro"
    key_name      = "MyKeyPai"
    vpc_security_group_ids = ["petclinic-sg"]
}
resource "aws_instance" "worker-VM" {
    ami           = "ami-0f9124f7452cdb2a6"
    instance_type = "t2.micro"
    key_name      = "MyKeyPai"
    vpc_security_group_ids = ["petclinic-sg"]
}
resource "aws_instance" "manager-VM" {
    ami           = "ami-0f9124f7452cdb2a6"
    instance_type = "t2.micro"
    key_name      = "MyKeyPai"
    vpc_security_group_ids = ["petclinic-sg"]
}
