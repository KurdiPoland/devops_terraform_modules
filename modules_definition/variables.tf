variable name {
    type = string
    default = "file_name.txt"
}

variable file_content {
    type = string
    default = "Default contents"
}
    
variable permission {
    type = string
    default = "0640"
}

variable is_sensitive {
    type = bool
    default = false
}

variable do_conversion {
    type = bool
    default = false
}