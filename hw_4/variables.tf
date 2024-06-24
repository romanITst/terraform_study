variable "ip_addresses" {
    default = ["192.168.1.1", "192.168.1.2", "192.168.1.3"]
    type    = list(string)
}

variable "personal_info" {
    default = "Ivan Ivanov"
    type    = string

}

variable "unique_ids" {
    default = ["UID123", "UID456", "UID789"]
    type    = list(string)
}