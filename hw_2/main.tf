terraform {
    required_providers {
        local = {
            source = "hashicorp/local"
            version = "2.1.0"
        }
    }
}


resource "local_file" "ip_addresses" {
    filename = "./ip_addresses.txt"
    content = join("\n", var.list_ip_addresses)
    file_permission = 0700
}

resource "local_file" "surname_name" {
    filename = "./personal_info.txt"
    content = var.surname_name
    file_permission = 0700
}

resource "local_file" "unique_ids" {
    filename = "./unique_ids.txt"
    content = join("\n", var.unique_ids)
    file_permission = 0700
}