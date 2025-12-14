resource "aws_instance" "instance" {
    for_each               = var.components
    ami                    = var.ami
    instance_type          = var.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids

    tags = {
        Name = each.value
    }
}

resource "aws_route53_record" "dns_records" {
    for_each = var.components
    zone_id  = var.zone_id
    name     = "${each.value}-dev"
    type     = "A"
    ttl      = 30
    records  = [aws_instance.instance[each.value].private_ip]
}