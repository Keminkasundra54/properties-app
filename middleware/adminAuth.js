const jwt = require("jsonwebtoken");

const config = process.env;

const verifyToken = (req, res, next) => {
  const token =
    req.body.token || req.query.token || req.headers["x-access-token"] || req.headers['Authorization'];

  if (!token) {
    return res.status(403).json({status: 403});
    
  }
  try {
    const decoded = jwt.verify(token, config.TOKEN_KEY);
    req.user = decoded;
    req.body.user = decoded;
    if (req.user.email == 'akeminkasundra@gmail.com') {
      return res.status(401).json({status: 401});  
    } 
  } catch (err) {
    return res.status(401).json({status: 401});
  }
  return next();
};

module.exports = verifyToken;