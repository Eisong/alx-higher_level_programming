#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Use curl to send a DELETE request and store the response in a variable
response=$(curl -X DELETE -s "$url")

# Display the body of the response
echo "Response body:"
echo "$response"
