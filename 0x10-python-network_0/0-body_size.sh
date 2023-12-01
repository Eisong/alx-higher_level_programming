#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 https://www.google.com"
    exit 1
fi


# Use curl to send a request and store the response

url="https://example.com/api/resource"

# Use curl to send a GET request
response=$(curl -s "$url")

# Display the response
echo "Response:"
echo "$response"
