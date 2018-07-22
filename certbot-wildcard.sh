#!/bin/bash

export LE_DOMAIN=$1

docker run -it \
    --rm \
    --name certbot \
    -v "$PWD/etc/letsencrypt:/etc/letsencrypt" \
    -v "$PWD/var/lib/letsencrypt:/var/lib/letsencrypt" \
    -v "$PWD/.cloudflare.ini:/.cloudflare.ini" \
    certbot/dns-cloudflare \
    certonly \
        --agree-tos \
        --no-eff-email \
        --dns-cloudflare \
        --dns-cloudflare-credentials /.cloudflare.ini \
        --dns-cloudflare-propagation-seconds 60 \
        -d $LE_DOMAIN \
        -d *.$LE_DOMAIN
