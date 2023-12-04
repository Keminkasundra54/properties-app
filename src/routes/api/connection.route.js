'use strict'

const express = require('express')
const router = express.Router()
const connectionController = require('../../controllers/connection.controller')
const auth = require('../../middlewares/authorization')

router.post('/create', auth(), connectionController.create)
router.get('/status', (req, res) => { res.send({status: 'OK'}) })
router.get('/create-auth', connectionController.create)
router.get('/get', auth(), connectionController.getConenction)
router.get('/getAll', auth(), connectionController.getAllConenction)
router.post('/call-hub', auth(), connectionController.callHubAPI)

module.exports = router
