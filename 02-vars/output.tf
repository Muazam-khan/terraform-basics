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
        56    # element 5
    ] 
}
# printing list variable and extracting list variables
output "sample-list-op" {
    value = "Welcome to ${var.sample-list[0]} with ${var.sample-list[1]} training and this is our batch ${var.sample-list[5]} and top student is ${var.sample-list[4]}"  
}

# declaring a map var

variable "training-map" {
   default = {
    batch = 56
    mode = "online"
    training = "Devops with AWS"
   }
}
# Printing a map variable
output "training-map-op" {
    value =   "${var.training-map["training"]} has great scope of opprtunities and it is completely ${var.training-map["mode"]} course and current batch number is ${var.training-map["batch"]}"
}