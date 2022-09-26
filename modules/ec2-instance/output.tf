output "ec2_instance_xlarge_sg" {
    value = try(aws_security_group.ec2_instance_xlarge_sg.id, "")
}