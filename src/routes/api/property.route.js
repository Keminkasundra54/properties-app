'use strict'

const express = require('express')
const router = express.Router()
const propertyController = require('../../controllers/property.controller')

router.post('/create', propertyController.create)
router.post('/get', propertyController.getProperty)
router.post('/update', propertyController.updateProperty)
router.get('/getAll', propertyController.getAllProperty)
router.post('/delete', propertyController.deleteProperty)

module.exports = router
