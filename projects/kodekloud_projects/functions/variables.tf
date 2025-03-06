variable "regions" {
  default = ["us-east-1", "us-west-1", "us-east-1"]
}

output "unique_regions" {
  value = toset(var.regions)  # Removes duplicates
}

output "num_regions" {
  value = length(var.regions)  # Returns 3
}

output "is_present" {
  value = contains(var.regions, "us-west-1")  # Returns true
}

variable "numbers" {
  default = [5, 10, 15]
}
output "max_value" {
  value = max(var.numbers...)
}