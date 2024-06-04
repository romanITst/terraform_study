resource "local_file" "ip_addresses" {
    filename = "./ip_addresses.txt"
    content = join("\n", var.ip_addresses)
    file_permission = 700
}

resource "local_file" "personal_info" {
    filename = "./personal_info.txt"
    content = var.personal_info
    file_permission = 700
}

resource "local_file" "unique_ids" {
    filename = "./unique_ids.txt"
    content = join("\n", var.unique_ids)
    file_permission = 700
}