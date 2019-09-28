#!/bin/bash

read -p 'Enter domain name: ' domain

sudo certbot certonly \
    --dns-cloudflare \
    --dns-cloudflare-credentials ~/.secrets/certbot/cloudflare.ini \
    -d ${domain} \
    -d www.${domain}

sudo certbot \
    --nginx \
    -d ${domain} \
    -d www.${domain}