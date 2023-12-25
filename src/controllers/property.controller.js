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
<<<<<<< HEAD
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
=======
    // body.image = req.files.path
    let image = []
    const myimage = req.files

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
          url: teamObj.filename,
          userId: req.body.userId
        })
        image.push(mydata.url)
      }
    }
    if (body) {
      const propertySave = new Property({
        name: req.body.name,
        address: req.body.address,
        price: req.body.price,
        marketingStatus: req.body.marketingStatus,
        owner: req.body.owner,
        minimumeTenancy: req.body.minimumeTenancy,
        letType: req.body.letType,
        image: image,
        userId: req.body.userId
      })
      await propertySave.save()
>>>>>>> 9e66cb9e423769ed43c506d50907db68c49dfaf8

      res.status(httpStatus.CREATED)
      res.send(propertySave.transform())
      // Once the tokens have been retrieved, use them to make a query
      // to the HubSpot API
      // res.redirect(`/`)
    } else {
<<<<<<< HEAD
    
=======
      console.log('i am else')
>>>>>>> 9e66cb9e423769ed43c506d50907db68c49dfaf8
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
      if (data && data.success) {
        const property = await Property.findOneAndUpdate({_id: req.body._id}, {pushedToHive: true})
        return res.json({ message: 'OK', data: result })
      } else {
        return res.json({ message: 'Failed', data: {} })
      }
    })
      .catch((_error) => {
        return res.json({ message: 'Failed', data: {} })
      })
      .finally(() => {
        console.log('finally')
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

function getPropertyPayload (property) {
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
      'agent_ref': 'testproperty5',
      'published': true,
      'property_type': 8,
      'status': 1,
      'new_home': false,
      'student_property': false,
      'create_date': '01-03-2017 10:00:00',
      'update_date': '01-03-2017 10:00:00',
      'date_available': '01-04-2017',
      'address': {
        'house_name_number': '34 Soho Square',
        'town': 'London',
        'postcode_1': 'W1D',
        'postcode_2': '3QU',
        'display_address': 'Soho Square, London',
        'latitude': 51.514899,
        'longitude': -0.132587,
        'pov_latitude': 51.51482,
        'pov_longitude': -0.13249,
        'pov_pitch': -16.78,
        'pov_heading': 235.75,
        'pov_zoom': 0
      },
      'price_information': {
        'price': 5000,
        'price_qualifier': 0,
        'deposit': 1000,
        'administration_fee': "TENANTS CHARGES</u></b><br>&nbsp;<br>Single tenant £185.00 application fee<br>Additional tenants £50.00 each<br>Guarantors (if required) £50.00 each<br><br>Deposit - one and a half months rent<br>Rent payable monthly in advance<br>Housing Benefit Applicants - Two months' rent in advance plus a suitable guarantor<br><br>For more information regarding our charges please contact the office or visit our website.<br><br><br>"
      },
      'details': {
        'summary': 'Beautiful And Test Branch, spacious, 1-bedroom apartment in Soho',
        'description': '<p><span>This beautiful, spacious, 1-bedroom apartment, created entirely for test purposes, is situated in the stunning location of Soho Square. It has a light, sunny aspect with views over the this incredible city.<\/span><\/p>',
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
        'rooms': [{
          'room_name': 'Lounge',
          'room_description': 'Bay window at the front, radiator, fitted carpet, electric fireplace, and dado rail',
          'room_length': 3.6,
          'room_width': 4.61,
          'room_dimension_unit': 5,
          'room_dimension_text': "12'0 x 15'1 (3.66m  x 4.61m)",
          'room_photo_urls': [
            'https://www.test-properties.co.uk/uploads/testproperty2/lounge1.jpg',
            'https://www.test-properties.co.uk/uploads/testproperty2/lounge2.jpg'
          ]
        }, {
          'room_name': 'Kitchen',
          'room_description': 'Fitted with matching range of base and eye level units with a marble worktop, stainless steel sink unit and aga. Ample space for fridge/freezer, washing machine and dishwasher. Window above sink allowing lots of light in, radiator and tiled flooring',
          'room_length': 2.21,
          'room_width': 3.16,
          'room_dimension_unit': 5,
          'room_dimension_text': "7'3 x 10'4 (2.21m  x 3.16m)",
          'room_photo_urls': [
            'https://www.test-properties.co.uk/uploads/testproperty2/kitchen1.jpg',
            'https://www.test-properties.co.uk/uploads/testproperty2/kitchen2.jpg'
          ]
        }, {
          'room_name': 'Bedroom',
          'room_description': 'Beautiful bay window fitted with curved radiator, fitted carpet',
          'room_length': 3.3,
          'room_width': 3.14,
          'room_dimension_unit': 5,
          'room_dimension_text': "10'10 x 10'4 (3.30m  x 3.14m)",
          'room_photo_urls': [
            'https://www.test-properties.co.uk/uploads/testproperty2/bedroom1.jpg',
            'https://www.test-properties.co.uk/uploads/testproperty2/bedroom2.jpg'
          ]
        }, {
          'room_name': 'Bathroom',
          'room_description': 'Fitted with 3 piece suite comprising of panelled walk-in bath complete with power shower, wash hand basin and close couple WC. Full height tiling, window to rear, radiator and vinyl flooring',
          'room_length': 2.21,
          'room_width': 3.16,
          'room_dimension_unit': 5,
          'room_dimension_text': "7'3 x 10'4 (2.21m  x 3.16m)",
          'room_photo_urls': [
            'https://www.test-properties.co.uk/uploads/testproperty2/bathroom1.jpg',
            'https://www.test-properties.co.uk/uploads/testproperty2/bathroom2.jpg'
          ]
        }, {
          'room_name': 'Hallway',
          'room_description': 'Elegant hallway with radiator and fitted carpet',
          'room_length': 2.9,
          'room_width': 1.5,
          'room_dimension_unit': 5,
          'room_dimension_text': "9'5 x 4'9 (2.9m x 1.5m)",
          'room_photo_urls': ['https://www.test-properties.co.uk/uploads/testproperty2/hallway1.jpg']
        }]
      },
      'media': [{
        'media_type': 2,
        'media_url': 'https://www.test-properties.co.uk/uploads/testproperty2/floorplan.jpg',
        'caption': 'Floor plan',
        'sort_order': 1,
        'media_update_date': '01-03-2017 10:00:00'
      }, {
        'media_type': 3,
        'media_url': 'https://www.test-properties.co.uk/uploads/testproperty2/brochure.jpg',
        'caption': 'Brochure',
        'sort_order': 2,
        'media_update_date': '01-03-2017 10:00:00'
      }, {
        'media_type': 6,
        'media_url': 'https://www.test-properties.co.uk/uploads/testproperty2/epc.jpg',
        'caption': 'EPC',
        'sort_order': 3,
        'media_update_date': '01-03-2017 10:00:00'
      }],
      'principal': {
        'principal_email_address': 'info@test-properties.co.uk',
        'auto_email_when_live': false,
        'auto_email_updates': false
      }
    }
  }
}
