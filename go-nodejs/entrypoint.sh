#!/bin/bash

# Default the TZ environment variable to UTC.
TZ=${TZ:-UTC}
export TZ

# Set environment variable that holds the Internal Docker IP
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Switch to the container's working directory
cd /home/container || exit 1

# Print Go version
printf "\033[1m\033[33mcontainer@pterodactyl~ \033[0mgo version\n"
go version

# Print NodeJS version
printf "\033[1m\033[33mcontainer@pterodactyl~ \033[0mnode --version\n"
node --version

# Print NPM version
printf "\033[1m\033[33mcontainer@pterodactyl~ \033[0mnpm --version\n"
npm --version

# Convert all of the "{{VARIABLE}}" parts of the command into the expected shell
# variable format of "${VARIABLE}" before evaluating the string and automatically
# replacing the values.
PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | envsubst)

# Display the command we're running in the output before execution
printf "\033[1m\033[33mcontainer@pterodactyl~ \033[0m%s\n" "$PARSED"

# pass the parsed startup args to sh for execution
# shellcheck disable=SC2086
exec sh -c "${PARSED}"
