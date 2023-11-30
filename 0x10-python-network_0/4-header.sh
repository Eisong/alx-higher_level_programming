#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Use curl to send a GET request with the specified header and store the response in a variable
response=$(curl -s -H "X-School-User-Id: 98" "$url")

# Display the body of the response
echo "Response body:"
echo "$response"
