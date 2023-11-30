#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Use curl to send a GET request and store the response in a variable
response=$(curl -s -o /dev/null -w "%{http_code}" "$url")

# Check if the status code is 200 (OK)
if [ "$response" -eq 200 ]; then
    # Send another request to get and display the body
    body=$(curl -s "$url")
    echo "Response body:"
    echo "$body"
else
    echo "Received a non-200 status code: $response"
fi
