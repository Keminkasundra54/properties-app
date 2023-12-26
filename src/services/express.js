/* eslint-disable indent */
/* eslint-disable semi */
/* eslint-disable quotes */
/* eslint-disable spaced-comment */
/* eslint-disable space-before-function-paren */
'use strict'

const config = require('../config')
const express = require('express')
const morgan = require('morgan')
const cors = require('cors')
const helmet = require('helmet')
const bodyParser = require('body-parser')
const errorHandler = require('../middlewares/error-handler')
const apiRouter = require('../routes/api')
const passport = require('passport')
const passportJwt = require('../services/passport')
const app = express()
const process = require('process')
const Property = require('../models/property.model')

app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({ extended: true, limit: '50mb', parameterLimit: 50000 }));

app.use(cors())
app.use(helmet())
const path = require('path')

app.use('/profile',express.static('images'))
console.log(path.join(__dirname, 'public'));
// eslint-disable-next-line no-path-concat

app.use('/static', express.static(path.join(__dirname, 'public')))
if (config.env !== 'test') app.use(morgan('combined'))

// passport
app.use(passport.initialize())
app.set('view engine', 'ejs');
app.get('/', async (req, res, next) => {
  res.setHeader("Content-Security-Policy", "frame-ancestors https://hubspot.com https://app.hubspot.com");
  const properties = await Property.find();
  return res.render('home', {properties: properties});
});
app.get('/get-card', async (req, res, next) => {
  return res.json(
    {
      "results": [{
    "objectId": 123,
    "title": "Manage Properties",
    "details": "Manage properties",
    "description": "Customer reported that the APIs are just running too fast. This is causing a problem in that they're so happy.",
    "actions": [
      {
        "type": "IFRAME",
        "width": 1020,
        "height": 748,
        "uri": "https://www.propertyapp.hubresolution.com/",
        "label": "Properties"
      }
    ]
  }]
});
})
app.get('/auth-app', async (req, res, next) => {
  return res.json({
    "objectId": 988,
    "title": "Properties",
    "created": "2016-08-04",
    "description": "Manage properties ",
    "actions": [
      {
        "type": "IFRAME",
        "width": 890,
        "height": 748,
        "uri": "https://tools.hubteam.com/integrations-iframe-test-app",
        "label": "Manage Properties"
      }
    ]
  });
})
passport.use('jwt', passportJwt.jwt)
app.use('/api', apiRouter)
app.use(errorHandler.handleNotFound)
app.use(errorHandler.handleError)

exports.start = () => {
  app.listen(config.port, (err) => {
    if (err) {
      console.log(`Error : ${err}`)
      process.exit(-1)
    }

    console.log(`${config.app} is running on ${config.port}`)
  })
}
exports.app = app
