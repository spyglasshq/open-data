openssl genrsa 4096 | openssl pkcs8 -topk8 -inform PEM -out rsa_private_key.p8 -nocrypt
openssl rsa -in rsa_private_key.p8 -pubout -out rsa_public_key.pub

# Command to strip PEM headers and newlines and copy to clipboard:
# cat rsa_public_key.pub | grep -v 'PUBLIC KEY' | tr -d '\n' | pbcopy
