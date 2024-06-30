output "time0" {
  value       = local_file.time0.content
  description = "Contains current date & time at the time of execution"
}

output "time1" {
  value       = local_file.time1.content
  description = "Contains current date & time at the time of execution"
}

output "tf_version" {
  value       = local_file.tf_version.content
  description = "Contains current terraform version at the time of execution"
}