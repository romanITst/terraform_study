
variable "cloud_users" {
  type    = string
  default = "andrew:ken:faraz:mutsumi:peter:steve:braja"
}

variable "media" {
  type = set(string)
  default = [
    "/media/tails.jpg",
    "/media/eggman.jpg",
    "/media/ultrasonic.jpg",
    "/media/knuckles.jpg",
    "/media/shadow.jpg",
  ]
}

variable "sf" {
  type = list(string)
  default = [
    "ryu", "ken", "akuma", "seth", "zangief",
    "poison", "gen", "oni", "thawk", "fang",
    "rashid", "birdie", "sagat", "bison", "cammy",
    "chun-li", "balrog", "cody", "rolento", "ibuki",
    
  ]
}

variable "sf2" {
  type = list(string)
  default = [
    "yu", "en", "akuma", "seth", "zangief",
    "poison", "gen", "ni", "thawk", "fang",
    "rashid", "birdie", "sagat", "ison", "cammy",
    "chun-li", "balrog", "cody", "rolento", "buki",
  ]
}
