resource "local_file" "local_files_mod" {
    
    count = var.is_sensitive ? 0 : 1

    filename = var.name
    content = var.do_conversion ? var.file_content : base64encode(var.file_content) 
    file_permission = var.permission
} 

resource "local_sensitive_file" "local_file_sensitive_mod" {

    count = var.is_sensitive ? 1 : 0

    filename = var.name
    content = var.do_conversion ? var.file_content : base64encode(var.file_content) 
    file_permission = var.permission
    
}