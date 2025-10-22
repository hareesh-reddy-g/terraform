# resource "aws_instance" "terraform" {
#     ami = data.aws_ami.joindevops.id
#     instance_type = "t2.micro"
#     vpc_security_group_ids = [aws_security_group.allow_all.id]
#     tags = {
#         Name = "terraform"
#         Terraform = "true"
#     }
# }

# resource "aws_security_group" "allow_all" {
#   name   = "allow-all"

#   egress {
#     from_port        = 0 # from port 0 to to port 0 means all ports
#     to_port          = 0 
#     protocol         = "-1" # -1 means all protocols
#     cidr_blocks      = ["0.0.0.0/0"] # internet
#   }

#   ingress {
#     from_port        = 0 # from port 0 to to port 0 means all ports
#     to_port          = 0 
#     protocol         = "-1" # -1 means all protocols
#     cidr_blocks      = ["0.0.0.0/0"] # internet
#   }

#   tags = {
#     Name = "allow-all"
#   }

# }

# dont uncomment this file while executing or for getting data of the instance means dont uncommment this file while executing data.tf file