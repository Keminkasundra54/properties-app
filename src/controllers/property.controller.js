/* eslint-disable no-unused-vars */
'use strict'
require('dotenv').config()
const Property = require('../models/property.model')
const httpStatus = require('http-status')
const Image = require('../models/Image.model')

exports.create = async (req, res, next) => {
  try {
    const body = req.body
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
          url:  teamObj.filename,
          userId: req.body.userId
        });
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
            minimumeTenancy:req.body.minimumeTenancy,
            letType: req.body.letType,
            image:image,
            userId :req.body.userId,
          });
        await propertySave.save()

      res.status(httpStatus.CREATED)
      res.send(propertySave.transform())
      // Once the tokens have been retrieved, use them to make a query
      // to the HubSpot API
      // res.redirect(`/`)
    } else {
      console.log("i am else")
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
    const property = await Property.findOneAndUpdate({_id: req.body._id}, req.body)
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

