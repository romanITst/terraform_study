terraform {
    required_providers {
        local = {
            source  = "hashicorp/local"
            version = "2.1.0"
        }
        time  = {
            source  = "hashicorp/time"
            version = "0.11.0"
        }
    }
}

resource "time_static" "current_time" {
}

resource "local_file" "time0" {
    filename = "./time0.txt"
    content  = time_static.current_time.rfc3339
}

resource "local_file" "time1" {
    filename = "./time1.txt"
    content  = time_static.current_time.id
}

resource "local_file" "time2" {
    filename = "./time2.txt"
    content  = time_static.current_time.id
}