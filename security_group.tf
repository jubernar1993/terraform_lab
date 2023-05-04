resource "aws_security_group"{
    description = "security with using dynamic blocks"

dynamic "ingress"{
    for_each = ["80","22","443"]

    content {
        ingress {
from_port = value.ingress
to_port = value_ingress 
protocol = "tcp"
cidr_block = ["0.0.0.0/0"] 
    }
}



}
