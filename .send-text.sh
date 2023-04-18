#!/bin/bash

echo "Hi! This is an automated text machine!"
echo "Please enter your recipient's phone number:"
read ph_nb
echo "Please enter your message:"
read msg
if [ -z "$ph_nb" ] || [ -z "$msg" ]; then
    echo "Please enter all the required information."
    exit 1
fi
echo "Enter your textbelt API key (or press enter to use the default key):"
read key
if [ -z "$key" ]; then
    key="5e956e97f93d823f19ca978d203978bbde9a43bfQ7OKfVIcHwHian9nNYz79jKdJ"
fi
echo "Sending message to $ph_nb..."
curl -X POST https://textbelt.com/text \
     --data-urlencode phone="$ph_nb" \
     --data-urlencode message="$msg" \
     --data-urlencode key="$key"