 # The configuration file inside will be used to create an RSA type private key and then a certificate signing
 # request or a csr using this key.
resource "local_file" "key_data" {
        filename       = "/tmp/.pki/private_key.pem"
        content = tls_private_key.private_key.private_key_pem
        file_permission =  "0400"
}
resource "tls_private_key" "private_key" {
  algorithm   = "RSA"
  rsa_bits  = 2048
  ecdsa_curve = "P384"
}
resource "tls_cert_request" "csr" {
  private_key_pem = file("/tmp/.pki/private_key.pem")
  depends_on = [ local_file.key_data ]

  subject {
    common_name  = "flexit.com"
    organization = "FlexIT Consulting Services"
  }
}
