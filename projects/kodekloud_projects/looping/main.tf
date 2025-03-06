
resource "local_sensitive_file" "name" {
    filename = each.value
    content = var.content
    for_each = toset(var.users)
}

# The resource address with the filename - /root/user11 is now represented as:
# local_sensitive_file.name["/root/user11"]