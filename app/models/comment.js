const mongoose = require('mongoose')

const commentSchema = new mongoose.Schema({
  title: {
    type: String,
    require: true
  },
  content: {
    type: String,
    require: true
  }
}, {
  timestamps: true
})

// not going to be making a model for this Schema
// we are going to pass it to our restaurant schema

module.exports = commentSchema
