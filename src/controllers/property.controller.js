/* eslint-disable no-unused-vars */
'use strict'
require('dotenv').config()
const Property = require('../models/property.model')
const httpStatus = require('http-status')
const Image = require('../models/Image.model')
const fs = require('fs')
const axios = require('axios')
var https = require('https')

exports.create = async (req, res, next) => {
  try {
    const body = req.body
    let imagevar = []
    let roomimagevar = []
    const room_information = []

    const roomjsondata = JSON.parse(req.body.room_information)
    const img = req.files.roomimage
    const myimg = req.files.image

  if( myimg != undefined){
    if (myimg.length > 0 ) {
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
  }
  if(img != undefined){
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
exports.pushToHive = async (req, res, next) => {
  try {
    const property = await Property.findOne({_id: req.body._id})
    const key = fs.readFileSync('./certs/burrowstest.pem')
    const ca = fs.readFileSync('./certs/burrowstest.jks')

    const url = 'https://adfapi.adftest.rightmove.com/v1/property/sendpropertydetails'

    const httpsAgent = new https.Agent({
      rejectUnauthorized: true, // Set to false if you dont have the CA
      pfx: fs.readFileSync('./certs/burrowstest.p12'),
      passphrase: '5MWLx1088L',
      keepAlive: false
    })
    const axiosInstance = axios.create({ headers: { 'User-Agent': 'rightmove-datafeed/1.0' }, httpsAgent })
    const preparePropertyPayload = getPropertyPayload(property)
    const result = axiosInstance.post(url, preparePropertyPayload, { httpsAgent }).then(async ({ data }) => {
      console.log(data)
      if (data && data.success) {
        const property = await Property.findOneAndUpdate({_id: req.body._id}, {pushedToHive: true})
        return res.json({ message: 'OK', data: result })
      } else {
        return res.json({ message: 'Failed', data: {} })
      }
    })
      .catch((_error) => {
        console.log(_error)
        return res.json({ message: 'Failed', data: {} })
      })
      .finally((data) => {
        console.log('finally', data)
      })
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
      { $set: {price: price, marketingStatus: marketingStatus ,owner:owner, minimumeTenancy:minimumeTenancy ,letType:letType , image :image }})
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
    const id = req.body._id
    console.log(id)
    await Property.findOneAndDelete({_id:id})
    return res.json({ message: 'OK', data: {message: 'Success'} })
  } catch (error) {
    next(error)
  }
}
function getPropertyPayload (property) {
  let rooms = property.room_information.map((room) => {
    room.room_photo_urls = room.roomimage.map(url => {
      return 'https://propertyapp.hubresolution.com/roomimage/' + url
    })
    room.room_dimension_unit = 5
    return room
  })
  let medias = property.image.map(media => {
    return {
      'media_type': 2,
      'media_url': 'https://propertyapp.hubresolution.com/profile/' + media,
      'caption': 'Floor plan',
      'sort_order': 1,
      'media_update_date': '01-03-2017 10:00:00'
    }
  })
  return {
    'network': {
      'network_id': 13076
    },
    'branch': {
      'branch_id': 265955,
      'channel': 2,
      'overseas': false
    },
    'property': {
      'agent_ref': 'Prperty' + Date.now(),
      'published': true,
      'property_type': 8,
      'status': 1,
      'new_home': false,
      'student_property': false,
      'create_date': '01-03-2017 10:00:00',
      'update_date': '01-03-2017 10:00:00',
      'date_available': '01-04-2017',
      'address': {
        'house_name_number': property.address.house_name_number,
        'town': property.address.town,
        'postcode_1': property.address.postcode_1,
        'postcode_2': property.address.postcode_2,
        'display_address': property.address.display_address,
        'latitude': property.address.latitude,
        'longitude': property.address.longitude,
        'pov_latitude': 51.51482,
        'pov_longitude': -0.13249,
        'pov_pitch': -16.78,
        'pov_heading': 235.75,
        'pov_zoom': 0
      },
      'price_information': {
        'price': property.price_information.price,
        'price_qualifier': 0,
        'deposit': property.price_information.deposit,
        'administration_fee': property.price_information.administration_fee
      },
      'details': {
        'summary': property.summary,
        'description': property.description,
        'features': [
          'Brand New',
          'Private Parking',
          'Panoramic views',
          'Lift Access',
          'Private Patio'
        ],
        'bedrooms': 1,
        'bathrooms': 1,
        'reception_rooms': 1,
        'parking': [15],
        'outside_space': [30],
        'year_built': 1999,
        'entrance_floor': 6,
        'condition': 1,
        'accessibility': [38],
        'heating': [2],
        'furnished_type': 2,
        'pets_allowed': true,
        'smokers_considered': false,
        'housing_benefit_considered': false,
        'sharers_considered': false,
        'all_bills_inc': false,
        'council_tax_inc': true,
        'rooms': rooms
      },
      'media': medias,
      'principal': {
        'principal_email_address': 'info@test-properties.co.uk',
        'auto_email_when_live': false,
        'auto_email_updates': false
      }
    }
  }
}

// console.log(req.body._id)
//     const property = await Property.findOne({ _id: req.body._id })

    // const propertiedata = {
    //   "_id": property._id,
    //   "price": property.price_information.price,
    //   "price_qualifier": property.price_information.price_qualifier,
    //   "deposit": property.price_information.deposit,
    //   "administration_fee": property.price_information.administration_fee,
    //   "marketingStatus": property.marketingStatus,
    //   "owner": property.owner,
    //   "minimumeTenancy": property.minimumeTenancy,
    //   "letType": property.letType,
    //   "description": property.description,
    //   "summary": property.summary,
    //   "house_name_number": property.address.house_name_number,
    //   "town": property.address.town,
    //   "postcode_1": property.address.postcode_1,
    //   "postcode_2": property.address.postcode_2,
    //   "display_address": property.address.display_address,
    //   "latitude": property.address.latitude,
    //   "longitude": property.address.longitude,
    //   "room_name": property.room_information.room_name,
    //   "room_description": property.room_information.room_description,
    //   "room_length": property.room_information.room_length,
    //   "room_dimension_unit": property.room_information.room_dimension_unit,
    //   "room_dimension_text": property.room_information.room_dimension_text,
    //   "roomimage": property.room_information.roomImage