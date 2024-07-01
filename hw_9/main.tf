resource "local_file" "log" {
    filename = "./log.txt"
    content  = ""
}

resource "local_file" "backup" {
    filename   = "./backup${count.index+1}.txt"
    content    = "${local_file.log.id}:${count.index+1}"
    depends_on = [local_file.log]
    count      = 3
    lifecycle {
        prevent_destroy = true
    }
}

resource "local_file" "unique_files" {
    for_each = var.files
    filename = "./${each.key}.txt"
    content  = each.value
}
