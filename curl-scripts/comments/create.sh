TITLE="Comment title"
CONTENT="comment on post"
POSTID="627037ae628ba474f1c60dc2"

curl 'http://localhost:4741/comments' \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "title": "'"${TITLE}"'",
      "content": "'"${CONTENT}"'",
      "postId": "'"${POSTID}"'"
    }
  }'