#!/bin/bash
#▀▀▀▀▀▀▀▀▀▀▀

DOMAINS="$(cat ../../surface_🌏/domains.String[])";
EMAIL="$(cat ../../surface_🌏/email.String)";

for domain in $DOMAINS; do
    certbot --nginx --agree-tos --redirect --hsts --staple-ocsp --email "$EMAIL" -d "$domain"
done
