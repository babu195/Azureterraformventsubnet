variable "resorcegroup_details" {
    type = object({
        name = string
        location = string
    })
    default = {
      location = "Central US"
      name = "alexa"
    }
  
}

variable "vnet_details" {
    type = object({
        name = string
        address_space = list(string)
    })
  
}

variable "subnet_details" {
    type = object({
        name = list(string)
    })
  
}