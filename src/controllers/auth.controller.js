'use strict'

const User = require('../models/user.model')
const jwt = require('jsonwebtoken')
const config = require('../config')
const httpStatus = require('http-status')
const uuidv1 = require('uuid/v1')
const bcrypt = require('bcrypt-nodejs')
exports.register = async (req, res, next) => {
  try {
    const activationKey = uuidv1()
    const body = req.body
    body.activationKey = activationKey
    body.role = 'user'
    const user = new User(body)
    const savedUser = await user.save()
    res.status(httpStatus.CREATED)
    res.send(savedUser.transform())
  } catch (error) {
    return next(User.checkDuplicateEmailError(error))
  }
}

exports.login = async (req, res, next) => {
  try {
    const user = await User.findAndGenerateToken(req.body)
    const payload = {sub: user.id}
    const token = jwt.sign(payload, config.secret, {expiresIn: '7d'})
    return res.json({ message: 'OK', token: token })
  } catch (error) {
    next(error)
  }
}

exports.confirm = async (req, res, next) => {
  try {
    await User.findOneAndUpdate(
      { 'activationKey': req.query.key },
      { 'active': true }
    )
    return res.json({ message: 'OK' })
  } catch (error) {
    next(error)
  }
}
exports.reset = async (req, res, next) => {
  try {
    const resetToken = uuidv1()
    await User.findAndSendResetLink(
      { 'email': req.body.email, resetToken: resetToken }
    )
    await User.findOneAndUpdate(
      { 'email': req.body.email },
      { 'resetToken': resetToken }
    )
    return res.json({ message: 'OK' })
  } catch (error) {
    next(error)
  }
}
exports.updatePassword = async (req, res, next) => {
  try {
    await User.findOneAndUpdate(
      { 'resetKey': req.body.key },
      { 'password': bcrypt.hashSync(req.body.password) }
    )
    return res.json({ message: 'OK' })
  } catch (error) {
    next(error)
  }
}
