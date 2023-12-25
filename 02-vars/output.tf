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
# declaring number data type and printing
output "numerical-op" {
  value = var.numerical
}
# declaring a list variable type, a key with multiple values is referred as list

variable "sample-list" {
    default = [
        "Devops",    # element 0
        "Aws cloud",  # element 1
        100,
        false,
        "khan",
        56    # element5
    ] 
}
# printing list variable 
output "sample-list-op" {
    value = var.sample-list  
}