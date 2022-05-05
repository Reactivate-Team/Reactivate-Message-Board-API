#!/bin/sh

API="http://localhost:4741"
URL_PATH="/posts"
ID="627019412bf1bb330e06f0f4"
TOKEN="ac405d5975af2c27b4aea61516c7ce18"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
