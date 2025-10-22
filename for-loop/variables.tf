variable "instances" { 
    default = [ "mongodb", "redis", "catalogue", "user", "cart", "mysql", "shipping", "rabbitmq", "payment" ]
    #default = {
    #   mongodb = "t2.micro"
    #   redis = "t2.micro"
    #   mysql = "t3.small"
    #}
    #default = {
    #    mongodb = {
    #        "instance_type = "t2.micro"
    #        ami = "ami-id"
    #    }
    #    redis = "t2.micro"
    #    mysql = "t3.small"
    #}
} 

variable "zone_id" {
    default = "Z099665035X39GB8IHQAJ"
}

variable "domain_name" {
    default = "hareesh.space"
}