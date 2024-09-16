# simple file resource
resource "local_file" "tf_example1" {
  filename = "/Users/kunalverma/Desktop/terraform-course/01_basics/example-${count.index}.txt"
  content  = "kunal is a good instructor!"
  count = 3
}