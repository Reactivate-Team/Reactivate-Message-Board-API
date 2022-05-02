#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts"

TEXT="Something"
TITLE="Post Title"
DATE="2023-01-25"
TOKEN="7bb8c9c92d905099210c440a85bceecf"

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
