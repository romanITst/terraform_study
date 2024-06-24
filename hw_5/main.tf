locals {
      cloud_users_list = split(":", var.cloud_users)
      media_random     = element(tolist(var.media), random_integer.random_num.result)
      media_length     = length(var.media)
      sf_subset        = slice(var.sf, 0, 5)
      sorted_distinct_media = distinct(var.media)
      sf_map           = zipmap(var.sf, local.contains_sf_map)
      contains_sf_map  = [for value in var.sf : contains(var.sf2, value)]
      reversed_sf      = reverse(var.sf)
}

resource "random_integer" "random_num" {
      min = 0
      max = local.media_length
      keepers = {
            list = local.media_length
      }
}