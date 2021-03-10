#!/usr/bin/env bash

curl -s https://api.kinopio.club/space/HASZ8HDbGXn-1jkG-Zud8 | jq -r '.cards | sort_by(.y) | .[] | .name + "\n"'