resource "null_resource" "anthos-demo" {

  provisioner "local-exec" {
    command = "sh sample.sh"

  }

}