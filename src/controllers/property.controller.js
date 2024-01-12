/* eslint-disable no-unused-vars */
'use strict'
require('dotenv').config()
// const Property = require('../models/property.model')
const Property = require('../models/property_description.model')
const OutsideSpace = require('../models/outside-space.model')
const Parking = require('../models/parking.model')
const PropertyType = require('../models/property_type.model')
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

    if (img != undefined) {
      if (img.length > 0) {
        for (const i in img) {
          const teamObj = img[i]
          if (teamObj.fieldname == "roomimage") {
            const roomdata = new Image({
              fieldname: teamObj.fieldname,
              filename: teamObj.filename,
            });
            roomimagevar.push(roomdata.filename)
          }
        }
      }
    }
    for (let i = 0; i < roomjsondata.length; i++) {
      const lastdata = []
      for (let k = 0; k < roomimagevar.length; k++) {
        for (let j = 0; j < roomjsondata[i].roomImage.length; j++) {
          // lastdata.push(roomjsondata[i].roomImage[j])
          let newdata = roomimagevar[k].split("_").pop()
          console.log(newdata)
          if (newdata == roomjsondata[i].roomImage[j]) {
            lastdata.push(roomimagevar[k])
          }
        }
      }
      const obj = {
        "room_name": roomjsondata[i].room_name,
        "summary_description": roomjsondata[i].summary_description,
        "unique_features": roomjsondata[i].unique_features,
        "room_description": roomjsondata[i].room_description,
        "room_dimension": roomjsondata[i].room_dimension,
        "room_image": lastdata
      }
      room_information.push(obj)
    }
    if (myimg != undefined) {
      if (myimg.length > 0) {
        for (const i in myimg) {
          const teamObj = myimg[i]
          if (teamObj.fieldname == "image") {
            const imgdata = new Image({
              fieldname: teamObj.fieldname,
              destination: teamObj.destination,
              filename: teamObj.filename,
              path: teamObj.path,
              size: teamObj.size,
            });
            const obj = {
              "imagedata": imgdata.filename,
              "imagetype": req.body.imagetype[i]
            }
            imagevar.push(obj)
          }
        }
      }
    }
    const pricedata = {
      "orio": req.body.orio,
      "offers_over": req.body.offers_over,
      "guide_price": req.body.guide_price,
      "fixed_price": req.body.fixed_price
    }
    const details_pricedata = {
      "residentail_orio": req.body.residentail_orio,
      "residentail_offers_over": req.body.residentail_offers_over,
      "residentail_guide_price": req.body.residentail_guide_price,
      "residentail_fix_price": req.body.residentail_fix_price,
      "residentail_price_on_application": req.body.residentail_price_on_application,
    }
    const deatils_tenuredata = {
      "residentail_free_hold": req.body.residentail_free_hold,
      "residentail_less_hold": req.body.residentail_less_hold
    }
    const addressdata = {
      "building_name": req.body.building_name,
      "street": req.body.street,
      "addrress_line_2": req.body.addrress_line_2,
      "town": req.body.town,
      "country": req.body.country,
      "passcode": req.body.passcode,
    }
    const tenuredata = {
      "free_hold": req.body.free_hold,
      "less_hold": req.body.less_hold,
    }
    const rent = {
      "per_person_per_week": req.body.per_person_per_week,
      "per_week": req.body.per_week,
      "per_calander_month": req.body.per_calander_month,
      "per_quater": req.body.per_quater,
      "per_annum": req.body.per_annum
    }
    if (body) {
      const propertySave = new Property({
        propertytype: req.body.propertytype,
        owner_contect_details: req.body.owner_contect_details,
        address: addressdata,
        location_map: req.body.location_map,
        price: pricedata,
        tenure: tenuredata,

        bedrooms: req.body.bedrooms,
        bathrooms: req.body.bathrooms,
        reception_rooms: req.body.reception_rooms,
        property_type: req.body.property_type,
        parking: req.body.parking,
        outside_space: req.body.outside_space,
        council_tax_band: req.body.council_tax_band,
        image: imagevar,

        active: req.body.active,
        featured: req.body.featured,
        availability: req.body.availability,

        property_description: room_information,

        details_price: details_pricedata,
        deatils_tenure: deatils_tenuredata,

        rent: rent,
        deposit: req.body.deposit,
        furnishing: req.body.furnishing,
        availabale_date: req.body.availabale_date,
        minimume_tenancy: req.body.minimume_tenancy
      });
      await propertySave.save()

      const outsideSpacedata = new OutsideSpace({
        propertyId: propertySave._id,
        outsideSpace_name: req.body.outside_space
      })
      await outsideSpacedata.save()

      const parkingdata = new Parking({
        propertyId: propertySave._id,
        parking_name: req.body.parking
      })
      await parkingdata.save()

      const PropertyTypedata = new PropertyType({
        propertyId: propertySave._id,
        property_type_name: req.body.property_type
      })
      await PropertyTypedata.save()

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
    const property = await Property.findOne({ _id: req.body._id })

    const propertiedata = {
      "_id": property._id,
      "owner_contect_details": property.owner_contect_details,
      "deposit": property.deposit,
      "building_name": property.address.building_name,
      "street": property.address.street,
      "town": property.address.town,
      "addrress_line_2": property.address.addrress_line_2,
      "country": property.address.country,
      "passcode": property.address.passcode,
      "location_map": property.location_map,
      "orio": property.price.orio,
      "offers_over": property.price.offers_over,
      "guide_price": property.price.guide_price,
      "fixed_price": property.price.fixed_price,

      "free_hold": property.tenure.free_hold,
      "less_hold": property.tenure.less_hold,

      "bedrooms": property.bedrooms,
      "bathrooms": property.bathrooms,
      "reception_rooms": property.reception_rooms,
      "property_type": property.property_type,
      "parking": property.parking,
      "outside_space": property.outside_space,
      "council_tax_band": property.council_tax_band,
      // "image": property.image,

      "active": property.active,
      "featured": property.featured,
      "availability": property.availability,

      // "room_name":property.property_description[0].room_name,
      // "summary_description": property.property_description[0].summary_description,
      // "unique_features": property.property_description[0].unique_features[0],
      // "room_description": property.property_description[0].room_description,
      // "room_dimension": property.property_description[0].room_dimension,
      // "room_image": property.property_description.room_image[0],

      "residentail_orio": property.details_price.residentail_orio,
      "residentail_offers_over": property.details_price.residentail_offers_over,
      "residentail_guide_price": property.details_price.residentail_guide_price,
      "residentail_fix_price": property.details_price.residentail_fix_price,
      "residentail_price_on_application": property.details_price.residentail_price_on_application,

      "residentail_free_hold": property.deatils_tenure.residentail_free_hold,
      "residentail_less_hold": property.deatils_tenure.residentail_less_hold,

      "deposit": property.deposit,
      "furnishing": property.furnishing,
      "availabale_date": property.availabale_date,
      "minimume_tenancy": property.minimume_tenancy,

      "per_person_per_week": property.rent.per_person_per_week,
      "per_week": property.rent.per_week,
      "per_calander_month": property.rent.per_calander_month,
      "per_quater": property.rent.per_quater,
      "per_annum": property.rent.per_annum,
      "propertytype": property.propertytype,
      "id": property._id

    }
    return res.json({ message: 'OK', data: propertiedata })
  } catch (error) {
    console.log(error)
    next(error)
  }
}
exports.pushToHive = async (req, res, next) => {
  try {
    const property = await Property.findOne({ _id: req.body._id })
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
        const property = await Property.findOneAndUpdate({ _id: req.body._id }, { pushedToHive: true })
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

    let imagevar = []
    let roomimagevar = []
    const room_information = []
    const myimg = req.files.image
    //  for roomimage add and update
    const roomjsondata = JSON.parse(req.body.room_information)
    const img = req.files.roomimage
    const olddata = await Property.findOne({ _id: req.body.id })
    if(olddata.property_description.length > 0)
    {
       for(let v= 0 ; v< olddata.property_description.length ; v++){
        room_information.push(olddata.property_description[v])
       }
    }
    for (let a = 0; a < olddata.property_description.length; a++) {
      if (olddata.property_description[a].room_image.length) {
        for (let b = 0; b < olddata.property_description[a].room_image.length; b++) {
          const mydata = olddata.property_description[a].room_image[b]
          if (mydata) {
            roomimagevar.push(mydata)
            // const fils = fs.unlinkSync('./roomimage/' + mydata)
          }
        }
      }
    }
    if (img != undefined) {
      if (img.length > 0) {
        for (const i in img) {
          const teamObj = img[i]
          if (teamObj.fieldname == "roomimage") {
            const roomdata = new Image({
              fieldname: teamObj.fieldname,
              filename: teamObj.filename,
            });
            roomimagevar.push(roomdata.filename)
          }
        }
      }
    }
    for (let i = 0; i < roomjsondata.length; i++) {
      const lastdata = []

      for (let k = 0; k < roomimagevar.length; k++) {

        for (let j = 0; j < roomjsondata[i].roomImage.length; j++) {
          // lastdata.push(roomjsondata[i].roomImage[j])
          let newdata = roomimagevar[k].split("_").pop()
          if (newdata == roomjsondata[i].roomImage[j]) {
            lastdata.push(roomimagevar[k])
          }
        }
      }

      const obj = {
        "room_name": roomjsondata[i].room_name,
        "summary_description": roomjsondata[i].summary_description,
        "unique_features": roomjsondata[i].unique_features,
        "room_description": roomjsondata[i].room_description,
        "room_dimension": roomjsondata[i].room_dimension,
        "room_image": lastdata
      }
      room_information.push(obj)
    }
    // roomimage add and update end here

    //image add and update
    if (olddata.image.length) {
      for (let a = 0; a < olddata.image.length; a++) {
        const mydata = olddata.image[a]
        imagevar.push(mydata)
        if (mydata) {
          // const fils = fs.unlinkSync('./images/' + mydata)
        }
      }
    }
    if (myimg != undefined) {
      if (myimg.length > 0) {
        for (const i in myimg) {
          const teamObj = myimg[i]
          if (teamObj.fieldname == "image") {
            const imgdata = new Image({
              fieldname: teamObj.fieldname,
              destination: teamObj.destination,
              filename: teamObj.filename,
              path: teamObj.path,
              size: teamObj.size,
            });
            const obj = {
              "imagedata": imgdata.filename,
              "imagetype": req.body.imagetype[i]
            }
            imagevar.push(obj)
          }
        }
      }
    }

    //image update end

    const property = await Property.findOneAndUpdate({ _id: req.body.id }, {
      $set: {
        "image": imagevar,

        'address.building_name': req.body.building_name,
        'address.street': req.body.street,
        'address.addrress_line_2': req.body.addrress_line_2,
        "address.town": req.body.town,
        "address.country": req.body.country,
        "owner_contect_details": req.body.owner_contect_details,

        "location_map": req.body.location_map,

        'price.orio': req.body.orio,
        'price.offers_over': req.body.offers_over,
        'price.guide_price': req.body.guide_price,
        "price.fixed_price": req.body.fixed_price,

        'tenure.guide_price': req.body.free_hold,
        "tenure.fixed_price": req.body.less_hold,

        "bedrooms": req.body.bedrooms,
        "bathrooms": req.body.bathrooms,
        "reception_rooms": req.body.reception_rooms,
        "council_tax_band": req.body.council_tax_band,
        "active": req.body.active,
        "featured": req.body.featured,
        "property_description": req.body.property_description,

        "availability": req.body.availability,
        "property_type": req.body.property_type,
        "parking": req.body.parking,
        "outside_space": req.body.outside_space,

        "details_price.residentail_orio": req.body.residentail_orio,
        "details_price.residentail_offers_over": req.body.residentail_offers_over,
        "details_price.residentail_guide_price": req.body.residentail_guide_price,
        "details_price.residentail_fix_price": req.body.residentail_fix_price,
        "details_price.residentail_price_on_application": req.body.residentail_price_on_application,

        "deatils_tenure.residentail_free_hold": req.body.residentail_free_hold,
        "deatils_tenure.residentail_less_hold": req.body.residentail_less_hold,

        "deposit": req.body.deposit,
        "furnishing": req.body.furnishing,
        "availabale_date": req.body.availabale_date,
        "minimume_tenancy": req.body.minimume_tenancy,

        'rent.per_person_per_week': req.body.per_person_per_week,
        'rent.per_week': req.body.per_week,
        'rent.per_calander_month': req.body.per_calander_month,
        "rent.per_quater": req.body.per_quater,
        'rent.per_annum': req.body.per_annum,
        "property_description": room_information,
      }
    })
    return res.json({ message: 'OK', data: property })
  } catch (error) {
    console.log(error)
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

    const olddata = await Property.findOne({ _id: id })
    if (olddata.property_description && olddata.property_description.length) {
      for (let a = 0; a < olddata.property_description.length; a++) {
        if (olddata.property_description[a] && olddata.property_description[a].room_image && olddata.property_description[a].room_image.length) {
          for (let b = 0; b < olddata.property_description[a].room_image.length; b++) {
            const mydata = olddata.property_description[a].room_image[b]
            if (mydata) {
              console.log(mydata)
              const fils = fs.unlinkSync('./roomimage/' + mydata)
            }
          }
        }
      }
    }
    await Property.findOneAndDelete({ _id: id })
    await Parking.findOneAndDelete({ propertyId: id })
    await OutsideSpace.findOneAndDelete({ propertyId: id })
    await PropertyType.findOneAndDelete({ propertyId: id })

    return res.json({ message: 'OK', data: { message: 'Success' } })
  } catch (error) {
    next(error)
  }
}
function getPropertyPayload(property) {
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
