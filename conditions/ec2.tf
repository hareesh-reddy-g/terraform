resource "aws_instance" "my_instance" {
  ami           = "ami-09c813fb71547fc4f" # Replace with a valid AMI ID for your region
  instance_type = var.environment == "dev" ? "t2.micro" : "t3.medium"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
      Name = "terraform"
      Terraform = "True"
  }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"

  egress {
    from_port        = 0  # from port 0 to to port 0 means all ports
    to_port          = 0
    protocol         = "-1"     # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"]     # this is internet
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all"
  }

}