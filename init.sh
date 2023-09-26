#!/bin/bash

sudo apt update && sudo apt install -y nginx
sudo cp nginx.conf /etc/nginx/nginx.conf
sudo systemctl restart nginx

while true; do
  for i in {80..83}; do
    curl http://localhost:$i
  done
done
