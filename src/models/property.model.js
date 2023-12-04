'use strict'
const httpStatus = require('http-status')
const mongoose = require('mongoose')
const APIError = require('../utils/APIError')
const Schema = mongoose.Schema

const propertySchema = new Schema({
  name: {
    type: String,
    maxlength: 50
  },
  address: {
    type: String
  },
  price: {
    type: String
  },
  marketingStatus: {
    type: String
  },
  owner: {
    type: String,
    required: true
  },
  letType: {
    type: String,
    required: true
  },
  minimumeTenancy: {
    type: String,
    required: true
  },
  image: {
    type: String,
    required: true
  },
  userId: {
    type: String,
    required: true
  }
}, {
  timestamps: true
})
propertySchema.method({
  transform () {
    const transformed = {}
    const fields = ['name', 'address', 'price', 'marketingStatus', 'owner', 'letType', 'minimumeTenancy', 'image']

    fields.forEach((field) => {
      transformed[field] = this[field]
    })

    return transformed
  }
})
propertySchema.statics = {
  async findProperty (_id) {
    const connection = await this.findOne({ _id: _id }).exec()
    if (!connection) throw new APIError(`No property associated with ${_id}`, httpStatus.NOT_FOUND)
    return connection
  },
  async getAllProperty (userId) {
    if (!userId) throw new APIError('Name must be provided for login')
    const property = await this.find().exec()
    if (!property) throw new APIError(`No property`, httpStatus.NOT_FOUND)
    return property
  },
  async removeProperty (_id) {
    if (!_id) throw new APIError('Name must be provided for login')
    const property = await this.deleteOne({_id: _id}).exec()
    if (!property) throw new APIError(`No property`, httpStatus.NOT_FOUND)
    return property
  }
}

module.exports = mongoose.model('Property', propertySchema)
