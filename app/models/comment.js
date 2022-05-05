const mongoose = require('mongoose')

const commentSchema = new mongoose.Schema({
  title: {
    type: String,
    require: true
  },
  content: {
    type: String,
    require: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User'
    // required: true
  },
  username: {
    type: String
  }

}, {
  timestamps: true
})

// not going to be making a model for this Schema
// we are going to pass it to our restaurant schema

module.exports = commentSchema
