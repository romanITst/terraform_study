output "cloud_users_list" {
    value = local.cloud_users_list
    description = "Splits a string of names into a list of names"
}

output "media_random" {
    value = local.media_random
    description = "Selects a random element from a list"
}

output "media_length" {
    value = local.media_length
    description = "Gives the length of var.media list"
}

output "random_num" {
    value = random_integer.random_num
    description = "Gives the random number"
}

output "sf_subset" {
    value = local.sf_subset
    description = "Contains the first five elements from 'var.sf'"
}

output "sorted_distinct_media" {
    value = local.sorted_distinct_media
    description = "Returns the sorted 'media' list with uniques elements"
}

output "sf_map" {
    value = local.sf_map
    description = "Map which consists of keys(var.sf) and values(local.contains_sf_map)"
}

output "contains_sf_map" {
    value = local.contains_sf_map
    description = "A list of bool's from comparsion between 'var.sf' and 'var.sf2'\n 'for' loop was used to iterate trough each value in 'var.sf' and 'var.sf2'"
}

output "reversed_sf" {
    value = local.reversed_sf
    description = "Returns the reversed list (var.sf)"
}