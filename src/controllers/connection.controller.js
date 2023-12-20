/* eslint-disable no-unused-vars */
'use strict'
require('dotenv').config()
const request = require('request-promise-native')
const NodeCache = require('node-cache')
const session = require('express-session')
const opn = require('open')


const refreshTokenStore = {}
const accessTokenCache = new NodeCache({ deleteOnExpire: true });
const Connection = require('../models/connection.model')
const httpStatus = require('http-status')
const CLIENT_ID = process.env.CLIENT_ID
const CLIENT_SECRET = process.env.CLIENT_SECRET

const REDIRECT_URI = `http://localhost:3000/api/connection/create-auth`
exports.create = async (req, res, next) => {
  try {
    const body = req.query
    if (body.code) {
      console.log('       > Received an authorization token')

      const authCodeProof = {
        grant_type: 'authorization_code',
        client_id: CLIENT_ID,
        client_secret: CLIENT_SECRET,
        redirect_uri: REDIRECT_URI,
        code: body.code
      }
      console.log(authCodeProof)
      // Step 4
      // Exchange the authorization code for an access token and refresh token
      console.log('===> Step 4: Exchanging authorization code for an access token and refresh token', '_id')
      const token = await exchangeForTokens('test', authCodeProof)
      console.log(token)
      if (token.message) {
        return res.json({ message: 'ERROR', data: {message: token.message} })
      }
      console.log(token, 'asdasd', token.access_token)
      body.accessToken = token.access_token
      body.refreshToken = token.refresh_token
      console.log(body, 'Body111111111111')
      const connection = new Connection(body)
      const savedConnection = await connection.save()
      res.status(httpStatus.CREATED)
      res.send(savedConnection.transform())
      // Once the tokens have been retrieved, use them to make a query
      // to the HubSpot API
      // res.redirect(`/`)
    } else {
      res.status(httpStatus.PRECONDITION_FAILED)
      res.send('Failed')
    }
  } catch (error) {
    console.log(error)
    res.status(httpStatus.PRECONDITION_FAILED)
    res.send(error)
  }
}
const refreshAccessToken = async (userId) => {
  let refreshToken = refreshTokenStore[userId]
  if (!refreshTokenStore[userId]) {
    const collection = await Connection.findConnection(userId)
    refreshToken = collection.refreshToken
  }
  const refreshTokenProof = {
    grant_type: 'refresh_token',
    client_id: CLIENT_ID,
    client_secret: CLIENT_SECRET,
    redirect_uri: REDIRECT_URI,
    refresh_token: refreshToken
  }
  // eslint-disable-next-line no-return-await
  return await exchangeForTokens(userId, refreshTokenProof)
}
const exchangeForTokens = async (userId, exchangeProof) => {
  try {
    const responseBody = await request.post('https://api.hubapi.com/oauth/v1/token', {
      form: exchangeProof
    })
    console.log(responseBody)
    // Usually, this token data should be persisted in a database and associated with
    // a user identity.
    const tokens = JSON.parse(responseBody)
    console.log('       > Received an access token and refresh token1')
    refreshTokenStore[userId] = tokens.refresh_token
    console.log('       > Received an access token and refresh token2')
    console.log(userId, 'key')
    accessTokenCache.set('' + userId, tokens.access_token, Math.round(tokens.expires_in * 0.75))

    console.log('       > Received an access token and refresh token3')
    return tokens
  } catch (e) {
    console.log(e)
    console.error(e, `       > Error exchanging ${exchangeProof.grant_type} for access token`)
    return JSON.parse(e)
  }
}
exports.getConenction = async (req, res, next) => {
  try {
    const connection = await Connection.findConnection(req.body)
    const payload = {sub: connection.id}
    return res.json({ message: 'OK', data: payload })
  } catch (error) {
    next(error)
  }
}

exports.getAllConenction = async (req, res, next) => {
  try {
    const connection = await Connection.getAllConenction(req.user._id)
    return res.json({ message: 'OK', data: connection })
  } catch (error) {
    next(error)
  }
}
const getAccessToken = async (userId) => {
  // If the access token has expired, retrieve
  // a new one using the refresh token
  if (!accessTokenCache.get('' + userId)) {
    console.log('Refreshing expired access token')
    await refreshAccessToken(userId)
  }
  return accessTokenCache.get('' + userId)
}
exports.callHubAPI = async (req, res, next) => {
  try {
    let connection = {
      accessToken: await getAccessToken(req.user._id)
    }
    console.log(connection)
    const body = req.body
    if (body.method === 'POST') {
      const responseBody = await request.post(body.url, {json: body.data, headers: {...(body.headers ? body.headers : {}), authorization: 'Bearer ' + connection.accessToken}})

      return res.json({ message: 'OK', data: responseBody })
    }
    if (body.method === 'GET') {
      // eslint-disable-next-line standard/object-curly-even-spacing
      const responseBody = await request.get(body.url, { headers: {...(body.headers ? body.headers : {}), authorization: 'Bearer ' + connection.accessToken}})
      console.log(responseBody)
      return res.json({ message: 'OK', data: responseBody })
    }
    if (body.method === 'PATCH') {
      // eslint-disable-next-line standard/object-curly-even-spacing
      const responseBody = await request.patch(body.url, { headers: {...(body.headers ? body.headers : {}), authorization: 'Bearer ' + connection.accessToken}})
      return res.json({ message: 'OK', data: responseBody })
    }
  } catch (error) {
    next(error)
  }
}
