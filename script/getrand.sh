#!/bin/bash

# content-type header because fastcgi
echo "Content-type: text/html"
echo ""

ls /usr/share/nginx/www/pics | shuf -n 1 

