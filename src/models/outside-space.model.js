'use strict'
const httpStatus = require('http-status')
const mongoose = require('mongoose')
const APIError = require('../utils/APIError')
const object = require('joi/lib/types/object')
const Schema = mongoose.Schema

const outsideSpaceSchema = new Schema({
propertyId:{
    type:String,
    require:true
},
outsideSpaceName:{
    type:String,
    require:true
}
}, {
  timestamps: true
})

module.exports = mongoose.model('outsideSpace', outsideSpaceSchema)
