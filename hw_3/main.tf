terraform {
    required_providers {
        local = {
            source  = "hashicorp/local"
            version = "2.1.0"
        }
    }
}

resource "local_file" "list_ip_addresses" {
    filename = "./list_ip_addresses.txt"
    content  = join("/n", var.list_ip_addresses)
}

resource "local_file" "surname_name" {
    filename = "./name_surname.txt"
    content  = var.surname_name
}

resource "local_file" "name_surname" {
    filename = "./name_surname.txt"
    content  = join("/n", var.unique_ids)
}