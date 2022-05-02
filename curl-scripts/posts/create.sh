#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"

TEXT="iamtext"
TITLE="iamatitle"
DATE="2003-01-25"
TOKEN="89bf6f1453a82d1b7b585adcfd366af6"

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
