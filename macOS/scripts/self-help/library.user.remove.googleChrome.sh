#!/bin/sh

#############################################
# find the logged in user 					#
#############################################

currentUser=$(who | awk '/console/{print $1}')
echo $currentUser

# Kill Chrome if running
killall "Google Chrome"

# Remove Chrome User Profile
rm -r /Users/"$currentUser"/Library/Application\ Support/Google/Chrome/
