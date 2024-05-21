resource "random_password" "user_password" {
    length           = 10
    special          = true
    override_special = "!@#$%^&*()_+/*-|/[]{}()';:?.><,"
    min_lower   = 2
    min_upper   = 2
    min_numeric = 2
    min_special = 4
}

resource "random_password" "admin_password" {
    length           = 14
    special          = true
    override_special = "!@#$%^&*()_+/*-|/[]{}()';:?.><,"
    min_lower   = 3
    min_upper   = 2
    min_numeric = 3
    min_special = 5
}

resource "local_file" "user_password" {
    filename        = "./user_password.txt"
    content         = random_password.user_password.result
    file_permission = 0700
}

resource "local_file" "admin_password" {
    filename        = "./admin_password.txt"
    content         = random_password.admin_password.result
    file_permission = 0700
}