'use strict'
const httpStatus = require('http-status')
const mongoose = require('mongoose')
const APIError = require('../utils/APIError')
const Schema = mongoose.Schema

const imageSchema = new Schema({
userId:{
 type:String,
 require:true
},
fieldname: {
    type: String,
    maxlength: 50,
    require:true
},
originalname: {
    type: String,
    maxlength: 50,
    require:true
},
encoding: {
    type: String,
    maxlength: 50,
    require:true
},
filename: {
    type: String,
    require:true
},
path: {
    type: String,
    maxlength: 50,
    require:true
},
size:{
    type: String,
    maxlength: 50,
},
type:{
    type: String,
    default:"jpeg"
},
token:{
    type: String,
},
url:{
    type:String
}
}, {
    timestamps: true,
  })
const Image = new mongoose.model("Image", imageSchema)
module.exports = Image;