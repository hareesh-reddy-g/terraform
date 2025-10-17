resource "aws_instance" "my_instance" {
  ami           = var.ami_id  # Replace with a valid AMI ID for your region
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_all" {
  name   = var.sg_name

  egress {
    from_port        = var.egress_from_port  # from port 0 to to port 0 means all ports
    to_port          = var.egress_to_port
    protocol         = var.protocol   # -1 means all protocols
    cidr_blocks      = var.cidr     # this is internet
  }
  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  tags = {
    Name = "allow-all"
  }

}

# if we want to give t3 micro or something through command line means in gitbash
#  (  terraform plan -var "instance_type=t2.micro"    )