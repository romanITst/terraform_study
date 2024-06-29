locals {
    zero_instance_size = 0
    instance_size = var.instance_size == "small" ? "small" : (var.instance_size == "large" ? "large" : local.zero_instance_size) 

}

resource "null_resource" "file_create" {
    depends_on = [ var.instance_size ]
    provisioner "local-exec" {
        #command = local.instance_size == "small" ? "touch ./instance_info.txt" : (local.instance_size == "large" ? "touch ./instance_info.txt" : "echo File can't be touched. Check the 'var.instance_size'")
        command = "touch ./instance_size.txt"
    }
}

resource "local_file" "file_info" {
    depends_on  = [
        null_resource.file_create
    ]
    filename    = "./instance_info.txt"
    content     = var.instance_size == "small" ? "1 cpu" : (var.instance_size == "large" ? "4 cpu" : "Error! Check the 'var.instance_size'. It must be 'small' or 'large'.")
}