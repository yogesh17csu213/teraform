output "vpc_id" {
    value = try(aws_vpc.vpc.id, "")
}

output "igw_id" {
    value = try(aws_internet_gateway.igw.id, "")
}

output "gateway_id" {
    value = try(aws_internet_gateway.igw.id, "")
}