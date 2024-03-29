'use strict'

const express = require('express')
const router = express.Router()
const multer = require('multer')
const propertyController = require('../../controllers/property.controller')

const storage = multer.diskStorage({
    destination: function(req ,file, cb){
      if (file.fieldname === "roomimage") { // if uploading resume
        cb(null, 'roomimage/');
      }
      else
        {
      cb(null, 'images/')
        }
    },
    filename :function(req , file,cb){
      cb(null , Date.now()+'_'+file.originalname)
    }
})
const upload = multer({storage: storage})


router.post('/create', upload.fields([{name: 'image', maxCount: 5},{name: 'roomimage', maxCount: 5}]), propertyController.create)
router.post('/get', propertyController.getProperty)
router.post('/pushToHive', propertyController.pushToHive)
router.post('/update',upload.fields([{name: 'image', maxCount: 5},{name: 'roomimage', maxCount: 5}]),  propertyController.updateProperty)
router.get('/getAll', propertyController.getAllProperty)
router.post('/delete', propertyController.deleteProperty)
router.post('/removeimage', propertyController.removeimage)
router.post('/removeRoom' , propertyController.removeRoom)

// router.post('/addImage',propertyController.addImage)
module.exports = router

