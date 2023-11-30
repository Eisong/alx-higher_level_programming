#!/bin/bash

# Check if a URL and a file are provided as arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <URL> <JSON_FILE>"
    exit 1
fi

url=$1
json_file=$2

# Check if the JSON file exists
if [ ! -f "$json_file" ]; then
    echo "Error: JSON file '$json_file' not found."
    exit 1
fi

# Use curl to send a POST request with the JSON content in the request body
response=$(curl -s -X POST -H "Content-Type: application/json" -d "@$json_file" "$url")

# Display the body of the response
echo "Response body:"
echo "$response"
