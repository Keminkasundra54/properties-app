'use strict'

const express = require('express')
const router = express.Router()
const multer = require('multer')
const propertyController = require('../../controllers/property.controller')



const storage = multer.diskStorage({
    destination: function(req ,file, cb){
      cb(null, 'images/')
    },
    filename :function(req , file,cb){
      cb(null , Date.now()+'_'+file.originalname)
    }
})
const upload = multer({storage:storage})

router.post('/create', upload.array('image' , 5), propertyController.create)
router.post('/get', propertyController.getProperty)
router.post('/update', propertyController.updateProperty)
router.get('/getAll', propertyController.getAllProperty)
router.post('/delete', propertyController.deleteProperty)

// router.post('/addImage',propertyController.addImage)
module.exports = router
