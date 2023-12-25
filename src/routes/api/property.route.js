'use strict'

const express = require('express')
const router = express.Router()
const multer = require('multer')
const propertyController = require('../../controllers/property.controller')

const storage = multer.diskStorage({
<<<<<<< HEAD
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
=======
  destination: function (req, file, cb) {
    cb(null, 'images/')
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + '_' + file.originalname)
  }
>>>>>>> 9e66cb9e423769ed43c506d50907db68c49dfaf8
})
const upload = multer({storage: storage})

<<<<<<< HEAD

router.post('/create', upload.fields([{name: 'image', maxCount: 5},{name: 'roomimage', maxCount: 5}]), propertyController.create)
=======
router.post('/create', upload.array('image', 5), propertyController.create)
>>>>>>> 9e66cb9e423769ed43c506d50907db68c49dfaf8
router.post('/get', propertyController.getProperty)
router.post('/pushToHive', propertyController.pushToHive)
router.post('/update', propertyController.updateProperty)
router.get('/getAll', propertyController.getAllProperty)
router.post('/delete', propertyController.deleteProperty)

// router.post('/addImage',propertyController.addImage)
module.exports = router
