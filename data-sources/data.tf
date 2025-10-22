data "aws_ami" "joindevops" {
    owners           = ["973714476881"] 
    most_recent      = true
    
    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data "aws_instance" "mongodb" {
    instance_id = "i-02ac09e1567247d92"
}

output "mongodb_info" {
    value = data.aws_instance.mongodb.public_ip
}


# Here how to know owners is go to AMIS in AWS console serch and sort it by not owners it is private images then searchwith ami id will get owners number or id
# why we are writting mongodb means if earlier manually we created mongodb instance in AWS account then we will fetch deatils with instance id and instance name and instance owner of public image above command lines