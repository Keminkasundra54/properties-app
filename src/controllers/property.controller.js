/* eslint-disable standard/object-curly-even-spacing */
/* eslint-disable eqeqeq */
/* eslint-disable camelcase */
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
          if (teamObj.fieldname == 'roomimage') {
            const roomdata = new Image({
              fieldname: teamObj.fieldname,
              filename: teamObj.filename
            })
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
          let newdata = roomimagevar[k].split('_').pop()
          console.log(newdata)
          if (newdata == roomjsondata[i].roomImage[j]) {
            lastdata.push(roomimagevar[k])
          }
        }
      }
      const obj = {
        'roomName': roomjsondata[i].roomName,
        'summaryDescription': roomjsondata[i].summaryDescription,
        'uniqueFeatures': roomjsondata[i].uniqueFeatures,
        'roomDescription': roomjsondata[i].roomDescription,
        'roomDimension': roomjsondata[i].roomDimension,
        'room_image': lastdata
      }
      room_information.push(obj)
    }
    if (myimg != undefined) {

      if (myimg.length > 0) {
        for (const i in myimg) {

          const teamObj = myimg[i]
          if (teamObj.fieldname == 'image') {
            const imgdata = new Image({
              fieldname: teamObj.fieldname,
              destination: teamObj.destination,
              filename: teamObj.filename,
              path: teamObj.path,
              size: teamObj.size
            })
            if (Array.isArray(req.body.imagetype)) {
              if (req.body.imagetype.length) {
                const obj = {

                  'imagedata': imgdata.filename,
                  'imagetype': req.body.imagetype[i]
                }
                imagevar.push(obj)
              }
            } else {
              console.log('i am else')
              const obj = {
                'imagedata': imgdata.filename,
                'imagetype': req.body.imagetype
              }
              imagevar.push(obj)
            }
          }
        }
      }
    }
    const details_pricedata = {
      'residentailOrio': req.body.residentailOrio,
      'residentailOffersOver': req.body.residentailOffersOver,
      'residentailGuidePrice': req.body.residentailGuidePrice,
      'residentailFixPrice': req.body.residentailFixPrice,
      'residentailPriceOnApplication': req.body.residentailPriceOnApplication
    }
    const deatils_tenuredata = {
      'residentailFreeHold': req.body.residentailFreeHold,
      'residentailLessHold': req.body.residentailLessHold
    }
    const addressdata = {
      'buildingName': req.body.buildingName,
      'street': req.body.street,
      'addrressLine2': req.body.addrressLine2,
      'town': req.body.town,
      'country': req.body.country,
      'passcode': req.body.passcode
    }
    const rent = {
      'perPersonPerWeek': req.body.perPersonPerWeek,
      'perWeek': req.body.perWeek,
      'perCalanderMonth': req.body.perCalanderMonth,
      'perQuater': req.body.perQuater,
      'perAnnum': req.body.perAnnum
    }
    let mytype;
    if (req.body.type == 'undefined' || req.body.type == 'for_sale') {
      mytype = 'for_sale'
    } else {
      mytype = 'to_let'
    }
    if (body) {
      const propertySave = new Property({
        type: mytype,
        ownerContectDetails: req.body.ownerContectDetails,
        address: addressdata,
        locationMap: req.body.locationMap,

        bedrooms: req.body.bedrooms,
        bathrooms: req.body.bathrooms,
        receptionRooms: req.body.receptionRooms,
        propertyType: req.body.propertyType,
        parking: req.body.parking,
        outsideSpace: req.body.outsideSpace,
        councilTaxBand: req.body.councilTaxBand,
        image: imagevar,

        active: req.body.active,
        featured: req.body.featured,
        availability: req.body.availability,
        tolet_availability: req.body.tolet_availability,

        propertyDescription: room_information,

        detailsPrice: details_pricedata,
        deatilsTenure: deatils_tenuredata,

        rent: rent,
        deposit: req.body.deposit,
        furnishing: req.body.furnishing,
        availabaleDate: req.body.availabaleDate,
        minimumeTenancy: req.body.minimumeTenancy,
        name: req.body.name,
        description: req.body.description
      })
      await propertySave.save()

      const outsideSpacedata = new OutsideSpace({
        propertyId: propertySave._id,
        outsideSpaceName: req.body.outsideSpace
      })
      await outsideSpacedata.save()

      const parkingdata = new Parking({
        propertyId: propertySave._id,
        parkingName: req.body.parking
      })
      await parkingdata.save()

      const PropertyTypedata = new PropertyType({
        propertyId: propertySave._id,
        propertyTypeName: req.body.propertyType
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
    return res.json({ message: 'OK', data: property })
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
    console.log(preparePropertyPayload)
    const result = axiosInstance.post(url, preparePropertyPayload, { httpsAgent }).then(async ({ data }) => {
      if (data && data.success) {
        const property = await Property.findOneAndUpdate({ _id: req.body._id }, { pushedToHive: true })
        return res.json({ message: 'OK', data: result })
      } else {
        return res.json({ message: 'Failed at else', data: {} })
      }
    })
      .catch((_error) => {
        console.log(_error)
        return res.json({ message: 'Failed at catch', data: {_error} })
      })
      .finally((data) => {
        console.log('finally', data)
      })
  } catch (error) {
    console.log(error)
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
    const olddata = await Property.findOne({ _id: req.body._id })
    if (olddata.propertyDescription.length > 0) {
      for (let v = 0; v < olddata.propertyDescription.length; v++) {
        room_information.push(olddata.propertyDescription[v])
      }
    }
    for (let a = 0; a < olddata.propertyDescription.length; a++) {
      if (olddata.propertyDescription[a].room_image.length) {
        for (let b = 0; b < olddata.propertyDescription[a].room_image.length; b++) {
          const mydata = olddata.propertyDescription[a].room_image[b]
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
          if (teamObj.fieldname == 'roomimage') {
            const roomdata = new Image({
              fieldname: teamObj.fieldname,
              filename: teamObj.filename
            })
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
          let newdata = roomimagevar[k].split('_').pop()
          if (newdata == roomjsondata[i].roomImage[j]) {
            lastdata.push(roomimagevar[k])
          }
        }
      }
      const obj = {
        'roomName': roomjsondata[i].roomName,
        'summaryDescription': roomjsondata[i].summaryDescription,
        'uniqueFeatures': roomjsondata[i].uniqueFeatures,
        'roomDescription': roomjsondata[i].roomDescription,
        'roomDimension': roomjsondata[i].roomDimension,
        'room_image': lastdata
      }
      room_information.push(obj)
    }
    // roomimage add and update end here

    // image add and update
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
        console.log(myimg, 'imgggggg')
        for (const i in myimg) {
          const teamObj = myimg[i]
          if (teamObj.fieldname == 'image') {
            const imgdata = new Image({
              fieldname: teamObj.fieldname,
              destination: teamObj.destination,
              filename: teamObj.filename,
              path: teamObj.path,
              size: teamObj.size
            })

            if (Array.isArray(req.body.imagetype)) {
              if (req.body.imagetype.length) {
                const obj = {
                  'imagedata': imgdata.filename,
                  'imagetype': req.body.imagetype[i]
                }
                imagevar.push(obj)
              }
            } else {
              const obj = {
                'imagedata': imgdata.filename,
                'imagetype': req.body.imagetype
              }
              imagevar.push(obj)
            }
          }
        }
      }
    }
    // image update end
    const property = await Property.findOneAndUpdate({ _id: req.body._id }, {
      $set: {
        'image': imagevar,

        'address.buildingName': req.body.buildingName,
        'address.street': req.body.street,
        'address.addrressLine2': req.body.addrressLine2,
        'address.town': req.body.town,
        'address.country': req.body.country,
        'ownerContectDetails': req.body.ownerContectDetails,

        'locationMap': req.body.locationMap,

        'bedrooms': req.body.bedrooms,
        'bathrooms': req.body.bathrooms,
        'receptionRooms': req.body.receptionRooms,
        'councilTaxBand': req.body.councilTaxBand,
        'active': req.body.active,
        'featured': req.body.featured,
        // 'propertyDescription': req.body.propertyDescription,

        'availability': req.body.availability,
        "tolet_availability": req.body.tolet_availability,

        'propertyType': req.body.propertyType,
        'parking': req.body.parking,
        'outsideSpace': req.body.outsideSpace,

        'details_price.residentailOrio': req.body.residentailOrio,
        'details_price.residentailOffersOver': req.body.residentailOffersOver,
        'details_price.residentailGuidePrice': req.body.residentailGuidePrice,
        'details_price.residentailFixPrice': req.body.residentailFixPrice,
        'details_price.residentailPriceOnApplication': req.body.residentailPriceOnApplication,

        'deatils_tenure.residentailFreeHold': req.body.residentailFreeHold,
        'deatils_tenure.residentailLessHold': req.body.residentailLessHold,

        'deposit': req.body.deposit,
        'furnishing': req.body.furnishing,
        'availabaleDate': req.body.availabaleDate,
        'minimumeTenancy': req.body.minimumeTenancy,

        'rent.perPersonPerWeek': req.body.perPersonPerWeek,
        'rent.perWeek': req.body.perWeek,
        'rent.perCalanderMonth': req.body.perCalanderMonth,
        'rent.perQuater': req.body.perQuater,
        'rent.perAnnum': req.body.perAnnum,
        'propertyDescription': room_information

      }
    })

    await Parking.findOneAndUpdate({ propertyId: req.body._id }, { $set: { 'parkingName': req.body.parking } })
    await OutsideSpace.findOneAndUpdate({ propertyId: req.body._id }, { $set: { 'outsideSpaceName': req.body.outsideSpace } })
    await PropertyType.findOneAndUpdate({ propertyId: req.body._id }, { $set: { 'propertyTypeName': req.body.propertyType } })

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
    if (olddata.propertyDescription && olddata.propertyDescription.length) {
      for (let a = 0; a < olddata.propertyDescription.length; a++) {
        if (olddata.propertyDescription[a] && olddata.propertyDescription[a].room_image && olddata.propertyDescription[a].room_image.length) {
          for (let b = 0; b < olddata.propertyDescription[a].room_image.length; b++) {
            const mydata = olddata.propertyDescription[a].room_image[b]
            if (mydata) {
              const fils = fs.unlinkSync('./roomimage/' + mydata)
            }
          }
        }
      }
    }
    if (olddata.image && olddata.image.length) {
      for (let a = 0; a < olddata.image.length; a++) {
        const mydata = olddata.image[a].imagedata
        console.log(mydata)
        if (mydata) {

          const fils = fs.unlinkSync('./images/' + mydata)
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
  let availabaleDate;
  let price;
  if(property.type == 'for_sale'){
     availabaleDate = '01-01-2024'
     price = property.detailsPrice.residentailFixPrice
  }
  else if(property.type == 'to_let'){
    const formate3 = property.availabaleDate
    const day2 = formate3.getDate() 
    const month2 = formate3.getMonth() +1 
    const year2 = formate3.getFullYear()
    availabaleDate = `${day2}-${month2}-${year2}`
    price = property.rent.perCalanderMonth
  }

  let rooms = property.propertyDescription.map((room) => {
    room.room_image = room.room_image.map(url => {
      return 'https://propertyapp.hubresolution.com/roomimage/' + url
    })
    room.roomDimension_unit = 5
    return room
  })
  let medias = property.image.map(media => {
    return {
      'media_type': 2,
      'media_url': 'https://propertyapp.hubresolution.com/profile/' + media.imagedata,
      'caption':media.imagetype,
      'sort_order': 1,
      'media_update_date': '01-03-2017 10:00:00'
    }
  })

   const formate1 = property.createdAt
   const day = formate1.getDate() 
   const month = formate1.getMonth() +1 
   const year = formate1.getFullYear()
   const hours = formate1.getHours()
   const minutes = formate1.getMinutes()
   const secounds = formate1.getSeconds()

   const formate2 = property.updatedAt
   const day1 = formate2.getDate() 
   const month1 = formate2.getMonth() +1 
   const year1 = formate2.getFullYear()
   const hours1 = formate2.getHours()
   const minutes1 = formate2.getMinutes()
   const secounds1 = formate2.getSeconds()

   let parking = property.parking 
   if(parking == 'Grage')
   {
    parking = 16
   }
   else if(parking == 'Allocated'){ parking = 13}
   else if(parking == 'Communal'){ parking = 14}
   else if(parking == 'Covered'){ parking = 15}
   else if(parking == 'Driveway'){ parking = 17}
   else if(parking == 'Gated'){ parking = 18}
   else if(parking == 'Off-street'){ parking = 19}
   else if(parking == 'On Street'){ parking = 20}
   else if(parking == 'Rear'){ parking = 21}
   else if(parking == 'Permit'){ parking = 22}
   else if(parking == 'Private'){ parking = 23}
   else if(parking == 'Residents'){ parking = 24}
   else if(parking == 'Carport'){ parking = 25}


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
      'create_date': `${day}-${month}-${year} ${hours}:${minutes}:${secounds}` ,//"01-03-2017 10:00:00"
      'update_date': `${day1}-${month1}-${year1} ${hours1}:${minutes1}:${secounds1}`,//"01-03-2017 10:00:00"
      'date_available': availabaleDate,//"01-03-2017
      'address': {
        'house_name_number': property.address.buildingName,
        'town': property.address.town,
        'postcode_1': property.address.passcode,
        'postcode_2': 'Gt8',
        'display_address': property.address.buildingName  +" "+ property.address.town +" "+ property.address.passcode,
        'latitude': 51.51482,
        'longitude': -0.13249,
        'pov_latitude': 51.51482,
        'pov_longitude': -0.13249,
        'pov_pitch': -16.78,
        'pov_heading': 235.75,
        'pov_zoom': 0
      },
      'price_information': {
        'price': price,
        'price_qualifier': 0,
        'deposit': property.deposit,
        'administration_fee': '10000'
      },
      'details': {
        'summary': property.name,
        'description': property.description,
        'features': [property.propertyDescription.uniqueFeatures],
        'bedrooms': property.bedrooms,
        'bathrooms': property.bathrooms,
        'receptionRooms': property.receptionRooms,
        'parking': [parking],
        'outsideSpace': property.outsideSpace,
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
exports.removeimage = async (req, res, next) => {
  try {
    const imageName = req.body.imageName
    let modifydata = []
    const removeimg = await Property.findOne({ 'image.imagedata': imageName })
    if (removeimg) {
      fs.exists('./images/' + imageName, (exists) => {
        exists ? fs.unlinkSync('./images/' + imageName) : 'Not found!';
      });
      for (let j = 0; j < removeimg.image.length; j++) {
        if (removeimg.image[j].imagedata != imageName) {
          modifydata.push(removeimg.image[j])
        }
      }
      await Property.findOneAndUpdate({ _id: removeimg._id }, { $set: { image: modifydata } })
    }
    return res.json({ message: 'OK', data: { message: 'Remove' } })
  } catch (e) {
    next(e)
  }
}
exports.removeRoom = async (req, res, next) => {
  try {
    const roomdata = req.body.roomdata
    const roomDescription = roomdata.roomDescription
    const summaryDescription = roomdata.summaryDescription
    const roomName = roomdata.roomName
    const roomDimension = roomdata.roomDimension
    const propertydata = await Property.findOne({ 'propertyDescription.roomDescription': roomDescription, 'propertyDescription.summaryDescription': summaryDescription, 'propertyDescription.roomName': roomName, 'propertyDescription.roomDimension': roomDimension })
    if (propertydata) {
      const modifydata = []
      const data = propertydata.propertyDescription
      for (let j = 0; j < data.length; j++) {
        if (data[j].roomDescription != roomDescription && data[j].summaryDescription != summaryDescription && data[j].roomName != roomName && data[j].roomDimension != roomDimension) {
          modifydata.push(data[j])
        }
        else {
          if (data[j].room_image) {
            for (let i = 0; i < data[j].room_image.length; i++) {
              const roomimg = data[j].room_image[i]
              fs.exists('./roomimage/' + roomimg, (exists) => {
                exists ? fs.unlinkSync('./roomimage/' + roomimg) : 'Not found!';
              });
            }
          }
        }
      }
      await Property.findOneAndUpdate({ _id: propertydata._id }, { $set: { propertyDescription: modifydata } })
    }
    return res.json({ message: 'OK', data: { message: 'Remove' } })
  } catch (err) {
    next(err)
  }
}