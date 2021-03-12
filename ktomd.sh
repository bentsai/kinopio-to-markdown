#!/usr/bin/env bash

curl -s https://api.kinopio.club/space/$1 > kinopio.tmp

echo ---
echo -n "title: "
cat kinopio.tmp | jq .name
echo -n "date: "
cat kinopio.tmp | jq .updatedAt
echo "layout: layouts/post.njk"

cat kinopio.tmp | jq -r '.cards | sort_by(.y) | sort_by(.x) | .[] | .name + "\n"'

rm kinopio.tmp