resource "aws_security_group"{
    description = "security with using dynamic blocks"

dynamic "ingress"{
    for_each = ["80","22","443"]

    content {
        ingress 
    }
}



}
