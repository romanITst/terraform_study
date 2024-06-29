variable "instance_size" {
    type = string
    description = "value"
    validation {
        condition = substr(var.instance_size, 0, 5) == "large" || substr(var.instance_size, 0, 5) == "small"
        error_message = "value"
    }
}