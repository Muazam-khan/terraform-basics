# Declaring an empty variable
#variable "sample" {}

# Declaring a variable with a default value
variable "batch" {
    default = "batch56"
}

# printing a variable with outputs
output "batch-op" {
    value = var.batch
}
# when to enclose a variable in quotes and when to use $ notation for variable ???
# whenever ur var is enclosed in a set of strings or in b/w a sentence then we need to enclose them in strings and with bash notation.check "name" {
  
output "batch_number" {
    value = "Current Batch is ${var.batch}"
}

variable "numerical" {
    default = 100
}

output "numerical-op" {
  value = var.numerical
}
