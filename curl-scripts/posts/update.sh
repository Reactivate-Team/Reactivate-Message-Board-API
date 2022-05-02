#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"
ID="627019412bf1bb330e06f0f4"
TOKEN="ac405d5975af2c27b4aea61516c7ce18"
TEXT="UPDATED RANDOM POST"


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "post": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
