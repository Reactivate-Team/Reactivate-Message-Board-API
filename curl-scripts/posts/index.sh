#!/bin/sh

API="http://localhost:4741"
URL_PATH="/posts"
TOKEN="7bb8c9c92d905099210c440a85bceecf"


curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
