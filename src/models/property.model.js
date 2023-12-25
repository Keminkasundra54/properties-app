'use strict'
const httpStatus = require('http-status')
const mongoose = require('mongoose')
const APIError = require('../utils/APIError')
<<<<<<< HEAD
const object = require('joi/lib/types/object')
=======
const boolean = require('joi/lib/types/boolean')
>>>>>>> 9e66cb9e423769ed43c506d50907db68c49dfaf8
const Schema = mongoose.Schema

const propertySchema = new Schema({
  name: {
    type: String,
    maxlength: 50
  },
  address: {
    type: Object
  },
  price_information: {
    type: Object
  },
  marketingStatus: {
    type: String
  },
  owner: {
    type: String,
    // required: true
  },
  letType: {
    type: String,
    // required: true
  },
  minimumeTenancy: {
    type: String,
    // required: true
  },
  pushedToHive: {
    type: Boolean
  },
  image: {
    type: Array,
    default: null
  },
  room_information:{
    type:Object,
  },
  userId: {
    type: String
  },
  roomimage:{
    type: String
  },
  summary:{
    type: String
  },
  room_photo_urls:{
    type:String
  },
  description:{
    type: String
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
