#!/bin/bash

docker run -it \
    --rm \
    --name certbot \
    -v "$PWD/etc/letsencrypt:/etc/letsencrypt" \
    -v "$PWD/var/lib/letsencrypt:/var/lib/letsencrypt" \
    -v "$PWD/.cloudflare.ini:/.cloudflare.ini" \
    certbot/dns-cloudflare \
    certonly $@
