#!/bin/bash

# If any commands fail, fail the script immediately.
set -ex

# Clone the repository to the specified directory.
# git clone --depth 1 --branch openssl-3.0.7 https://github.com/openssl/openssl $1

wget https://github.com/openssl/openssl/releases/download/openssl-3.0.7/openssl-3.0.7.tar.gz -O /tmp/src.tar.gz
tar -xvf /tmp/src.tar.gz --directory /src
 
# Move the directory into the correct place
mv -v /src/openssl-3.0.7 "$1"
