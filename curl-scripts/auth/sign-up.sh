#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-up"
EMAIL="britt@gmail.com"
PASSWORD="password"
USERNAME="b-ritt"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'",
      "username": "'"${USERNAME}"'"
    }
  }'

echo
