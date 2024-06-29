
resource "null_resource" "file_create" {
    depends_on = [ var.instance_size ]
    provisioner "local-exec" {
        command = "touch ./instance_info.txt"
    }
}

resource "local_file" "file_info" {
    depends_on  = [null_resource.file_create ]
    filename    = "./instance_info.txt"
    content     = var.instance_size == "small" ? "instance size = 1 cpu" : (var.instance_size == "large" ? "instance_size = 4 cpu" : "var.instance_size's condition will stop execution of this code")
}