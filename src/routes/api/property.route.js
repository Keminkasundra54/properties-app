'use strict'

const express = require('express')
const router = express.Router()
const multer = require('multer')
const propertyController = require('../../controllers/property.controller')


const formData = require('express-form-data');
const newdata = formData.parse()

const storage = multer.diskStorage({
    destination: function(req ,file, cb){
      cb(null, './Image/')
    },
    filename :function(req , file,cb){
    cb(null , file.originalname + '-' + Date.now())
    }
})
router.post('/create', newdata , propertyController.create)
router.post('/get', propertyController.getProperty)
router.post('/update', propertyController.updateProperty)
router.get('/getAll', propertyController.getAllProperty)
router.post('/delete', propertyController.deleteProperty)

// router.post('/addImage',propertyController.addImage)
module.exports = router
