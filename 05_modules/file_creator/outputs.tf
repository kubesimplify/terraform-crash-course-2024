output "file1_path" {
  description = "this is the path to file 1"
  value = local_file.file1.filename
}
output "file2_path" {
  description = "this is the path to file 2"
  value = local_file.file2.filename
}