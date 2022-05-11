const express = require('express')
const router = express.Router()
const handle404 = require('../../lib/custom_errors')

const Post = require('../models/post')
const passport = require('passport')
const requireToken = passport.authenticate('bearer', { session: false })

router.post('/comments', requireToken, (req, res, next) => {
  const commentData = req.body.comment

  const postID = commentData.postId
  commentData.owner = req.user.id

  commentData.username = req.user.username

  Post.findById(postID).populate('owner')
    .then(handle404)
    .then(post => {
      post.comments.push(commentData)

      return post.save()
    })
    .then(post => res.status(201).json({ post: post }))
    .catch(next)
})

router.patch('/comments/:commentID', (req, res, next) => {
  const commentID = req.params.commentID
  const commentData = req.body.comment
  const postID = commentData.postId

  Post.findById(postID).populate('owner')
    .then(handle404)
    .then(post => {
      const comment = post.comments.id(commentID)

      comment.set(commentData)

      return post.save()
    })
    .then(() => res.sendStatus(204))
    .catch(next)
})

router.delete('/comments/:commentID', (req, res, next) => {
  const commentID = req.params.commentID
  const postID = req.body.comment.postId

  Post.findById(postID).populate('owner')
    .then(handle404)
    .then(post => {
      const comment = post.comments.id(commentID)

      comment.remove()

      return post.save()
    })
    .then(() => res.sendStatus(204))
    .catch(next)
})

module.exports = router
