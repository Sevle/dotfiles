#!/bin/bash

# Set the locale to ensure consistent date format
LC_TIME=en_US.UTF-8

# Get the formatted date and time
formatted_datetime=$(date '+%e %b %Y %-I:%M %p')

# Wrap the output in a JSON object
echo "{\"text\":\"$formatted_datetime\",\"class\":\"custom-clock\"}"

