'use strict'

const express = require('express')
const router = express.Router()
const propertyController = require('../../controllers/property.controller')

router.post('/create', propertyController.create)
router.get('/get', propertyController.getProperty)
router.get('/getAll', propertyController.getAllProperty)
router.post('/delete', propertyController.deleteProperty)

module.exports = router
