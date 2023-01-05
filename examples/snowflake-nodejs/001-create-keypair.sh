openssl genrsa 4096 | openssl pkcs8 -topk8 -inform PEM -out rsa_private_key.p8 -nocrypt
openssl rsa -in rsa_private_key.p8 -pubout -out rsa_public_key.pub
