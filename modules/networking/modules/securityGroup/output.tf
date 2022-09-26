output "security_group_id" {
    value = try(aws_security_group.public_sg.id, "")
}