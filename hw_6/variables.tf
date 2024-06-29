variable "instance_size" {
    type = string
    description = "Count of instance cpu's. It must be small(1cpu) or large(4cpu)"
    validation {
        condition = length(var.instance_size) == 5 && (substr(var.instance_size, 0, 5) == "large" || substr(var.instance_size, 0, 5) == "small")
        error_message = "The value of 'var.instance_size' must be string and 'small' or 'large'"
    }
}