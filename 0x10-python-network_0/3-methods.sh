#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Use curl to send an OPTIONS request and store the response in a variable
response=$(curl -s -X OPTIONS -i "$url")

# Extract and display the Allow header from the response headers
allow_header=$(echo "$response" | grep -i "Allow:")

if [ -z "$allow_header" ]; then
    echo "No Allow header found in the response."
else
    echo "Allowed HTTP methods:"
    echo "$allow_header" | cut -d ' ' -f 2-
fi
