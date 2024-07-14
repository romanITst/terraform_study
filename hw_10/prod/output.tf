output "filename" {
    value = var.filename
    description = "The name of .cfg file with web-server configuration for 'prod' environment"
}

output "file_permission" {
    value = var.file_permission
    description = "The .cfg file permission"
}

output "content" {
    value = var.content
    description = "The content of .cfg file which should consist of server_ip & server_port & server_name'"
}