'use strict'
const httpStatus = require('http-status');
const mongoose = require('mongoose');
const APIError = require('../utils/APIError');
const Schema = mongoose.Schema

const connectionSchema = new Schema({
  name: {
    type: String,
    maxlength: 50
  },
  accessToken: {
    type: String,
    unique: true
  },
  refreshToken: {
    type: String,
    unique: true
  },
  active: {
    type: Boolean,
    default: true
  }
}, {
  timestamps: true
})
connectionSchema.method({
  transform () {
    const transformed = {}
    const fields = ['name', 'accessToken', 'refreshToken']

    fields.forEach((field) => {
      transformed[field] = this[field]
    })

    return transformed
  }
})
connectionSchema.statics = {
  checkDuplicateTokenError (err) {
    if (err.code === 11000) {
      var error = new Error('Token already register')
      error.errors = [{
        field: 'apiToken',
        location: 'body',
        messages: ['Token already registered']
      }]
      error.status = httpStatus.CONFLICT
      return error
    }

    return err
  },
  async findConnection (userId) {
    const connection = await this.findOne({ userId: userId }).exec()
    if (!connection) throw new APIError(`No connection associated with ${userId}`, httpStatus.NOT_FOUND)

    if (!connection.active) throw new APIError(`Connection de-activated`, httpStatus.UNAUTHORIZED)

    return connection
  },
  async getAllConenction (userId) {
    if (!userId) throw new APIError('Name must be provided for login')
    const connection = await this.find({ userId: '' + userId }).exec()
    if (!connection) throw new APIError(`No connection associated with User`, httpStatus.NOT_FOUND)
    return connection
  }
}

module.exports = mongoose.model('Connection', connectionSchema)
