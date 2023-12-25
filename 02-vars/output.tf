# Declaring an empty variable
variable "sample" {}

# Declaring a variable with a default value
variable "batch" {
    default = "batch56"
}

# printing a variable with outputs
output "batch-op" {
    value = var.batch
}