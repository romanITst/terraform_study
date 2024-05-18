resource "random_password" "user_password" {
    length           = 10
    special          = true
    override_special = "(){}[]<>+-=_:?!#&*"
    min_special      = 3
    min_numeric      = 2
}

resource "random_password" "admin_password" {
    length           = 14
    special          = true
    override_special = "(){}[]<>+-=_:?!#&*"
    min_special      = 4
    min_numeric      = 4 
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