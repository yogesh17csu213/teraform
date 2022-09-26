output "subnet_id" {
    value = try(aws_subnet.public-1a.id, "")
}

output "subnet_id_public_1a" {
    value = try(aws_subnet.public-1a.id, "")
}

output "subnet_id_public_1b" {
    value = try(aws_subnet.public-1b.id, "")
}

output "subnet_id_public_1c" {
    value = try(aws_subnet.public-1c.id, "")
}

output "subnet_id_private_1a" {
    value = try(aws_subnet.private-1a.id, "")
}

output "subnet_id_private_1b" {
    value = try(aws_subnet.private-1b.id, "")
}

output "subnet_id_private_1c" {
    value = try(aws_subnet.private-1c.id, "")
}

    