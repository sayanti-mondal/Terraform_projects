resource "random_password" "password-generator" {
    length = var.length
  
}

output "password" {
  value = random_password.password-generator.result
}