data "local_file" "source_time" {
  filename = "./source.txt"
}

data "local_file" "source_tf_version" {
  filename = "./source2.txt"
}

resource "local_file" "time0" {
  filename = "./time0.txt"
  content  = data.local_file.source_time.content
}

resource "local_file" "time1" {
  filename = "./time1.txt"
  content  = data.local_file.source_time.content
}

resource "local_file" "tf_version" {
  filename = "./tf_version.txt"
  content  = data.local_file.source_tf_version.content
}