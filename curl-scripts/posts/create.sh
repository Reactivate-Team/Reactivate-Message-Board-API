#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"

TEXT="SomeRandomTextGoesHere"
TITLE="RANDOM POST"
DATE="2023-01-25"
TOKEN="ac405d5975af2c27b4aea61516c7ce18"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "post": {
      "text": "'"${TEXT}"'",
      "title": "'"${TITLE}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
