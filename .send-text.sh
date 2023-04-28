#!/bin/bash

#----------colors-----------#
NC='\033[0m'

Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
White='\033[0;37m'
Blink='\033[5m'
Bold='\033[1m'
#---------------------------#

echo -e "${Purple}${Blink}  _____________  ________   __  ______   ________  _______   ________${NC}"
echo -e "${Blue}${Blink} /_  __/ ____/ |/ /_  __/  /  |/  /   | / ____/ / / /  _/ | / / ____/${NC}"
echo -e "${Green}${Blink}  / / / __/  |   / / /    / /|_/ / /| |/ /   / /_/ // //  |/ / __/   ${NC}"
echo -e "${Yellow}${Blink} / / / /___ /   | / /    / /  / / ___ / /___/ __  // // /|  / /___   ${NC}"
echo -e "${Red}${Blink}/_/ /_____//_/|_|/_/    /_/  /_/_/  |_\____/_/ /_/___/_/ |_/_____/   ${NC}"
echo ""

echo "Hi! This is an automated text machine!"
echo "Please enter the sender's name : (or press enter to use default name 'machine')"
read sender
if [ -z "$sender" ]; then
	sender="Machine"
fi
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
     --data-urlencode sender="$sender" \
     --data-urlencode phone="$ph_nb" \
     --data-urlencode message="$msg" \
     --data-urlencode key="$key" \
