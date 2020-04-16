#!/bin/bash
TEMPLATEFILE="/usr/share/nginx/html/index.template"
INDEXFILE="/usr/share/nginx/html/index.html"

envsubst < $TEMPLATEFILE > $INDEXFILE && exec nginx -g 'daemon off;'
