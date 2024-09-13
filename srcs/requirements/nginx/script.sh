#!/bin/bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/oqatim.key -out /etc/nginx/certs/oqatim.crt -sha256 -subj "/CN=oqatim.42.fr"