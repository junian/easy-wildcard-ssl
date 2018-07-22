#!/bin/bash

export LE_DOMAIN=$1

./certbot.sh \
        --agree-tos \
        --no-eff-email \
        --dns-cloudflare \
        --dns-cloudflare-credentials /.cloudflare.ini \
        --dns-cloudflare-propagation-seconds 60 \
        -d $LE_DOMAIN \
        -d *.$LE_DOMAIN
