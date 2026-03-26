variable "username" {
type = list

}

#variable "age" {
#    default = "20"
#}


output "printname" {
  value = "first user is ${var.username[0]}"
}

