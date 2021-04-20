#!/bin/sh

data=$(curl -s "https://api.bitso.com/v3/ticker/?book=$1")
parsed=$(echo $data | jq '. | .payload | .book,.change_24,.last' | tr -d '"')
book=$(echo $parsed | awk '{print $1}')

if [ "$book" = "null" ]; then
    echo "NO DATA"
    exit
fi

change=$(echo $parsed | awk '{print $2}')
last=$(echo $parsed | awk '{print $3}')

echo "$book -> change: $change · price: \$$last"
