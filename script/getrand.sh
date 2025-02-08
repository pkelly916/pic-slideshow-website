#!/bin/bash

# content-type header because fastcgi
echo "Content-type: text/html"
echo ""

# mobile condition
if [[ -n "$QUERY_STRING" ]]; then
    echo "mobile/$(ls /usr/share/nginx/www/mobile | shuf -n 1)"
else # desktop condition
    echo "pics/$(ls /usr/share/nginx/www/pics | shuf -n 1)"
fi

