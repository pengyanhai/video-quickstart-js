#!/bin/bash


openssl genrsa -out private.key 2048 && \
    openssl req -new -key private.key -out request.csr && \
    penssl x509 -req -days 365 -in request.csr -signkey private.key -out certificate.crt
    