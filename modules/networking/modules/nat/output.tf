output "nat_id" {
    value = try(aws_nat_gateway.nat.id, "")
}

output "nat_gateway_id" {
    value = try(aws_nat_gateway.nat.id, "")
}