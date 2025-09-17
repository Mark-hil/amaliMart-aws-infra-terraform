# Use address (hostname only) so caller can append port if needed
output "db_address" { value = aws_db_instance.mysql.address }
output "db_sg_id" { value = aws_security_group.db_sg.id }
