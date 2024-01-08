'use strict'
const httpStatus = require('http-status')
const mongoose = require('mongoose')
const APIError = require('../utils/APIError')
const object = require('joi/lib/types/object')
const string = require('joi/lib/types/string')
const Schema = mongoose.Schema

const propertySchema = new Schema({
  type:{
   type:String,
   default: 'for_sale'
  },
  owner_contect_details: {
    type: String,
  },
  address: {
    type: Object
  },
  price: {
    type: Object
  },
  location_map: {
    type: String
  },
  tenure: {
    type: Object,
  },

  badrooms: {
    type: Number,
  },
  bathrooms: {
    type: Number
  },
  reception_rooms: {
    type: Number
  },
  property_type: {
    type: String
  },
  parking: {
    type: Object,
  },
  outside_space: {
    type: Object,
  },
  council_tax_band: {
    type: Object,
  },
  image: {
    type: Object,
  },

  active: {
    type: String,
  },
  featured: {
    type: String
  },
  availability: {
    type: String
  },
  send_to_portal: {
    type: String
  },
  property_description: {
    type: Object
  },

  details_price: {
    type: Object,
    default:null
  },
  deatils_tenure: {
    type: Object,
    default:null
  },
  rent:{
    type:Object,
    default:null
  },
  deposit:{
    type:Number,
    default:null
  },
  furnishing:{
    type:String,
    default:null
  },
  availabale_date:{
    type:Date,
    default:null
  },
  minimume_tenancy:{
    type:String,
    default:null
  },

}, {
  timestamps: true
})
propertySchema.method({
  transform() {
    const transformed = {}
    const fields = ['owner_contect_details', 'address', 'price', 'location_map', 'tenure',
      'badrooms', 'bathrooms', 'reception_room', 'propery_type', 'parking', 'outside_space', 'price', 'council_tax_band', 'image',
      'active', 'featured', , 'availability', 'send_to_portal',
      'property_description',
      'details_price', 'deatils_tenure',
      'rent','deposit','furnishing' , 'availabale_date' , 'minimume_tenancy']

    fields.forEach((field) => {
      transformed[field] = this[field]
    })

    return transformed
  }
})
propertySchema.statics = {
  async findProperty(_id) {
    const connection = await this.findOne({ _id: _id }).exec()
    if (!connection) throw new APIError(`No property associated with ${_id}`, httpStatus.NOT_FOUND)
    return connection
  },
  async getAllProperty(userId) {
    if (!userId) throw new APIError('Name must be provided for login')
    const property = await this.find().exec()
    if (!property) throw new APIError(`No property`, httpStatus.NOT_FOUND)
    return property
  },
  async removeProperty(_id) {
    if (!_id) throw new APIError('Name must be provided for login')
    const property = await this.deleteOne({ _id: _id }).exec()
    if (!property) throw new APIError(`No property`, httpStatus.NOT_FOUND)
    return property
  }
}
module.exports = mongoose.model('Property', propertySchema)
