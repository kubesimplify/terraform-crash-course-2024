resource "local_sensitive_file" "example1" {
  content  = "kunal123!"
  filename = "${path.module}/sensitive.txt"
}
