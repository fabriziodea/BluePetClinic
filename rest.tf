provider "aws" {
    version                 = "~> 2.0"
    region                  = "eu-west-2"
}
resource "aws_instance" "EC2" {
    ami           = "ami-0f9124f7452cdb2a6"
    instance_type = "t2.micro"
    key_name      = "MyKeyPai"
    vpc_security_group_ids = ["pet-sg", "ssh-sg", "80-sg", "all-sg"]
}
resource "aws_security_group" "open-clinic" {
    name = "pet-sg"
    ingress {

        from_port = 9966
        to_port = 9966
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_security_group" "ssh" {
    name = "ssh-sg"
    ingress {

        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_security_group" "p-80" {
    name = "80-sg"
    ingress {

        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
resource "aws_security_group" "outbound" {
    name = "all-sg"
    egress {

        from_port = 0
        to_port = 9999
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
