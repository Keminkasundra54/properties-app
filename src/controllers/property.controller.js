/* eslint-disable no-unused-vars */
'use strict'
require('dotenv').config()
const Property = require('../models/property.model')
const httpStatus = require('http-status')



exports.create = async (req, res, next) => {
  try {
    const myfile = req.body
    console.log(req.body)
    const body = req.body;
    if (body) {
      // console.log(body)
      const property = new Property(body)
      const propertySave = await property.save()

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

