resource "local_file" "local_files_m" {
    
    count = var.is_sensitive ? 0 : 1

    filename = var.name
    content = var.do_conversion ? var.file_content : base64encode(var.file_content) 
    file_permission = var.permission
} 

resource "local_sensitive_file" "local_file_sensitive_m" {

    count = var.is_sensitive ? 1 : 0

    filename = var.name
    content = var.do_conversion ? base64encode(var.file_content) : var.file_content 
    file_permission = var.permission
    
}

moved {
    from = local_file.local_files_mod
    to = local_file.local_files_m
}

moved {
    from = local_sensitive_file.local_file_sensitive_mod
    to = local_sensitive_file.local_file_sensitive_m
}