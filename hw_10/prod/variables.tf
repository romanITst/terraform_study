variable "filename" {
  type        = string
  description = "The name of .cfg file with web-server configuration for 'prod' environment"
}

variable "content" {
  type        = string
  description = "The content of .cfg file which should consist of server_ip & server_port & server_name'"
}

variable "file_permission" {
  type        = number
  description = "The .cfg file permission"
}