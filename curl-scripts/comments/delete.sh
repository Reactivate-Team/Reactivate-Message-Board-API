POSTID="627037ae628ba474f1c60dc2"
COMMENT_ID="62703c9c34282e770faec7d7"

curl "http://localhost:4741/comments/${COMMENT_ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "postId": "'"${POSTID}"'"
    }
  }'