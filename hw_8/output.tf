output "time0" {
  value       = local_file.time0.content
  description = "Contains current date & time"
}

output "time1" {
  value       = local_file.time1.content
  description = "Contains current date & time"
}

output "tf_version" {
  value       = local_file.tf_version.content
  description = "Contains current terraform version"
}