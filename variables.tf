variable "ami"{
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    default = "t3.micro"
}

variable "vpc_security_group_ids" {
    default = [ "sg-039df2e97e51ebc17" ]
}


variable "zone_id" {
    default = "Z09354891N46GVLJSDZH0"
}

variable "components" {
    default = {
        frontend  = "frontend"
        mongodb   = "mongodb"
#       catalogue = "catalogue"
    }
}