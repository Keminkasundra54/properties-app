'use strict'
const httpStatus = require('http-status')
const mongoose = require('mongoose')
const APIError = require('../utils/APIError')
const object = require('joi/lib/types/object')
const Schema = mongoose.Schema

const parkingSchema = new Schema({
propertyId:{
    type:String,
    require:true
},
parkingName:{
    type:String,
    require:true
}
}, {
  timestamps: true
})

module.exports = mongoose.model('Parking', parkingSchema)
