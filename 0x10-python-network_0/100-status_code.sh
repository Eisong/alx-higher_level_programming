#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Use curl to send a request and store the status code in a variable
status_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")

# Display the status code
echo "Status code: $status_code
