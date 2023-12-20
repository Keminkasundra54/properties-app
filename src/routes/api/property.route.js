'use strict'

const express = require('express')
const router = express.Router()
const multer = require('multer')
const propertyController = require('../../controllers/property.controller')
const cors = require('cors')
router.use(cors())
const storage = multer.diskStorage({
    destination: function(req ,file, cb){
      cb(null, 'images/')
    },
    filename :function(req , file,cb){
    cb(null , file.originalname)
    }
})
const upload = multer({storage:storage})

router.post('/create', upload.single('image'), propertyController.create)
router.post('/get', propertyController.getProperty)
router.post('/update', propertyController.updateProperty)
router.get('/getAll', propertyController.getAllProperty)
router.post('/delete', propertyController.deleteProperty)

// router.post('/addImage',propertyController.addImage)
module.exports = router
