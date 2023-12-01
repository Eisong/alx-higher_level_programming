#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 https://www.google.com"
    exit 1
fi

url=$1

# Use curl to send a request and store the response in a variable
response=$(curl -sI "$url")

# Extract the content length from the response headers
content_length=$(echo "$response" | grep -i "Content-Length" | awk '{print $2}' | tr -d '\r')

# Check if Content-Length is present in the headers
if [ -z "$content_length" ]; then
    echo "Unable to retrieve Content-Length from the response headers."
    exit 1
fi

echo "Size of the response body: ${content_length} bytes"
