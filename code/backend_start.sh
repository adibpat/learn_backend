#!/bin/bash
mkdir ../certs
openssl req -x509 -config openssl_config.conf -nodes -days 365 -newkey rsa:2048 -keyout ../certs/server.key -out ../certs/server.crt
docker-compose up -d
