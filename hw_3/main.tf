terraform {
    required_providers {
        local = {
            source  = "hashicorp/local"
            version = "2.1.0"
        }
    }
}

resource "local_file" "list_ip_addresses" {
    filename = "./ip_addresses.txt"
    content  = join("\n", var.list_ip_addresses)
}

resource "local_file" "surname_name" {
    filename   = "./personal_info.txt"
    content    = var.surname_name
    depends_on = [local_file.list_ip_addresses]
}

resource "local_file" "unique_ids" {
    filename = "./unique_ids.txt"
    content  = join("\n", var.unique_ids)
    depends_on = [local_file.surname_name]
}