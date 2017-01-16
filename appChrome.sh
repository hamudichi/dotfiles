#!/bin/bash

url=$((type -P xclip) -sel clip -o)
url2=$(xclip -o)
echo "$url"
echo "$url2"
exec /usr/bin/google-chrome --app="$url2"
google-chrome --app="https://www.cyberciti.biz/faq/unix-linux-bsd-appleosx-bash-assign-variable-command-output/"
