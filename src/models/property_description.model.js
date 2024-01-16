'use strict'
const httpStatus = require('http-status')
const mongoose = require('mongoose')
const APIError = require('../utils/APIError')
const object = require('joi/lib/types/object')
const string = require('joi/lib/types/string')
const Schema = mongoose.Schema

const propertySchema = new Schema({
  propertytype: {
    type: String,
    default: 'for_sale'
  },
  name: {
    type: String
  },
  description: {
    type: String
  },
  ownerContectDetails: {
    type: String
  },
  address: {
    type: Object
  },
  price: {
    type: Object
  },
  locationMap: {
    type: String
  },
  tenure: {
    type: Object
  },

  bedrooms: {
    type: Number
  },
  bathrooms: {
    type: Number
  },
  receptionRooms: {
    type: Number
  },
  propertyType: {
    type: String,
    default: 'apartment'
  },
  parking: {
    type: String,
    default: 'grage'
  },
  outsideSpace: {
    type: String,
    default: 'rear garden'
  },
  councilTaxBand: {
    type: Object
  },
  image: {
    type: Object
  },

  active: {
    type: String,
    default: 'yes'
  },
  featured: {
    type: String,
    default: 'yes'
  },
  availability: {
    type: String,
    default: 'for_sale'
  },
  tolet_availability:{
    type:String
  },
  sendToPortal: {
    type: String
  },
  propertyDescription: {
    type: Object
  },

  detailsPrice: {
    type: Object,
    default: null
  },
  deatilsTenure: {
    type: Object,
    default: null
  },
  rent: {
    type: Object,
    default: null
  },
  deposit: {
    type: Number,
    default: null
  },
  furnishing: {
    type: String,
    default: null
  },
  availabaleDate: {
    type: Date,
    default: null
  },
  minimumeTenancy: {
    type: String,
    default: null
  }

}, {
  timestamps: true
})
propertySchema.method({
  transform () {
    const transformed = {}
    const fields = ['propertytype', 'ownerContectDetails', 'address', 'price', 'locationMap', 'tenure',
      'bedrooms', 'bathrooms', 'receptionRooms', 'propery_type', 'parking', 'outsideSpace', 'price', 'councilTaxBand', 'image',
      'active', 'featured', , 'availability', 'sendToPortal',
      'propertyDescription',
      'detailsPrice', 'deatilsTenure',
      'rent', 'deposit', 'furnishing', 'availabaleDate', 'minimumeTenancy']

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
    const property = await this.deleteOne({ _id: _id }).exec()
    if (!property) throw new APIError(`No property`, httpStatus.NOT_FOUND)
    return property
  }
}
module.exports = mongoose.model('Property', propertySchema)
