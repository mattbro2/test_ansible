provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "tfauto_awesome" {
  ami           = "ami-06b5810be11add0e2"
  instance_type = "t2.micro"
  key_name      = "tfauto_awesome"
}

