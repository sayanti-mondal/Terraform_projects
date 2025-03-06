# Resource tls_private_key generates a 
#secure private key and encodes it as PEM. It is a logical resource that lives only in the terraform state.
resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits = 4096
}

# implicit dependency
resource "local_file" "key_details" {
  filename = "/root/key.txt"
  content = "${tls_private_key.pvtkey.private_key_pem}"
}

