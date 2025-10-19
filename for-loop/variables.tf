variable "instances" { 
    #default = [ "mongodb", "catalogue", "redis", "user", "cart", "mysql", "shipping", "rabbitmq", "payment", "frontend" ]
    default = {
        mongodb = "t2.micro"
        redis = "t2.micro"
        mysql = "t3.small"
    }
} 

variable "zone_id" {
    default = "Z099665035X39GB8IHQAJ"
}

variable "domain_name" {
    default = "hareesh.space"
}