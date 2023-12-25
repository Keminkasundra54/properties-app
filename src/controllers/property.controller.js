/* eslint-disable no-unused-vars */
'use strict'
require('dotenv').config()
const Property = require('../models/property.model')
const httpStatus = require('http-status')
const Image = require('../models/Image.model')

exports.create = async (req, res, next) => {
  try {
    const body = req.body
    let imagevar = []
    let roomimagevar = []
    const room_information = []
  
    const roomjsondata = JSON.parse(req.body.room_information)
    const img = req.files.roomimage
    const myimg = req.files.image

   
    if (myimg.length > 0 && myimg.length != undefined) {
      for (const i in myimg) {
        const teamObj = myimg[i]
        if(teamObj.fieldname == "image"){
          const imgdata = new Image({
            fieldname: teamObj.fieldname,
            destination: teamObj.destination,
            filename: teamObj.filename,
            path: teamObj.path,
            size: teamObj.size,
          });
          imagevar.push(imgdata.filename)
        }
      }
    }

    if (img.length > 0) {
      for (const i in img) {
        const teamObj = img[i]
        if(teamObj.fieldname == "roomimage"){
          const roomdata = new Image({
            fieldname: teamObj.fieldname,
            filename: teamObj.filename ,
         
          });
          roomimagevar.push(roomdata.filename)
        }
      }
    }
    const pricedata = {
      "price" : req.body.price,
      "price_qualifier" :req.body.price_qualifier , 
      "deposit" : req.body.deposit,
      "administration_fee" :req.body.administration_fee
    }
    const addressdata = {
      "house_name_number" : req.body.house_name_number,
			"town" : req.body.town,
			"postcode_1": req.body.postcode_1,
			"postcode_2": req.body.postcode_2,
			"display_address" : req.body.display_address,
			"latitude" : req.body.latitude,
			"longitude" : req.body.longitude,
    }
  
       for(let i=0; i< roomjsondata.length ; i++){
           const obj = {
            "room_name": roomjsondata[i].room_name,
            "room_description": roomjsondata[i].room_description,
            "room_length": roomjsondata[i].room_length,
            "room_dimension_unit": roomjsondata[i].room_dimension_unit,
            "room_dimension_text": roomjsondata[i].room_dimension_text,
            "roomimage":roomjsondata[i].roomImage
           }
           room_information.push(obj)
       }

    if (body) {
          const propertySave = new Property({
            name: req.body.name,
            address : addressdata,
            price_information: pricedata,
            marketingStatus: req.body.marketingStatus,
            owner: req.body.owner,
            minimumeTenancy:req.body.minimumeTenancy,
            letType: req.body.letType,
            image:imagevar,
            userId :req.body.userId,
            room_information :room_information,
            description:req.body.description,
            summary:req.body.summary,
            // room_photo_urls:room_photo_urls
          });
        await propertySave.save()

      res.status(httpStatus.CREATED)
      res.send(propertySave.transform())
      // Once the tokens have been retrieved, use them to make a query
      // to the HubSpot API
      // res.redirect(`/`)
    } else {
    
      res.status(httpStatus.PRECONDITION_FAILED)
      res.send('Failed')
    }
  } catch (error) {
    console.log(error)
    res.status(httpStatus.PRECONDITION_FAILED)
    res.send(error)
  }
}
exports.getProperty = async (req, res, next) => {
  try {
    const property = await Property.findOne({_id: req.body._id})
    return res.json({ message: 'OK', data: property })
  } catch (error) {
    next(error)
  }
}
exports.updateProperty = async (req, res, next) => {
  try {

    const {price, marketingStatus,owner, minimumeTenancy ,letType} = req.body
    const myimage = req.files
    let image = []
    if (myimage.length > 0) {
      for (const i in myimage) {
        const teamObj = myimage[i]
        const mydata = new Image({
          fieldname: teamObj.fieldname,
          originalname: teamObj.originalname,
          encoding: teamObj.encoding,
          mimetype: teamObj.mimetype,
          destination: teamObj.destination,
          filename: teamObj.filename,
          path: teamObj.path,
          size: teamObj.size,
          token: req.body.token,
          url:  teamObj.filename,
          userId: req.body.userId
        });
        image.push(mydata.url)
      }
    }
    const property = await Property.findOneAndUpdate({_id: req.body._id},
      { $set: {price: price, marketingStatus: marketingStatus ,owner:owner, minimumeTenancy:minimumeTenancy ,letType:letType , image :image  } })
    return res.json({ message: 'OK', data: property })
  } catch (error) {
    next(error)
  }
}
exports.getAllProperty = async (req, res, next) => {
  try {
    const property = await Property.find()
    return res.json({ message: 'OK', data: property })
  } catch (error) {
    next(error)
  }
}
exports.deleteProperty = async (req, res, next) => {
  try {
    await Property.removeProperty(req.body._id)
    return res.json({ message: 'OK', data: {message: 'Success'} })
  } catch (error) {
    next(error)
  }
}

