variable "file1_content" {
  description = "this is the content of file 1"
  type = string
  default = "hello from file 1"
}
variable "file2_content" {
  description = "this is the content of file 2"
  type = string
  default = "hello from file 2"
}

variable "filename_1" {
  type = string
  description = "this is the name of file 1"
  default = "file1.txt"
}
variable "filename_2" {
  type = string
  description = "this is the name of file 2"
  default = "file2.txt"
}