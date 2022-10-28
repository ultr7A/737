#!/bin/bash
#▀▀▀▀▀▀▀▀▀▀▀

DOMAINS="$(cat ../../surface_🌏/domains.String[])";


for domain in $DOMAINS; do
    certbot certonly --force-renew -d "$domain"
done
