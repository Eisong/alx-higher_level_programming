#!/bin/bash

# Check if a URL is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

# Variables to be sent in the POST request
email="test@gmail.com"
subject="I will always be here for PLD"

# Use curl to send a POST request with the specified variables and store the response in a variable
response=$(curl -s -X POST -d "email=$email&subject=$subject" "$url")

# Display the body of the response
echo "Response body:"
echo "$response"
