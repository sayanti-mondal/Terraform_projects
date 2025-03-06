variable "region" {
  default = "ca-central-1"
}
variable "cloud_users" {
     type = string
     default = "andrew:ken:faraz:mutsumi:peter:steve:braja"
  
}
variable "bucket" {
  default = "sonic-media"
  
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



