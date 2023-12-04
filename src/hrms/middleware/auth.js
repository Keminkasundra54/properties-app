const jwt = require("jsonwebtoken");
const useragent = require('express-useragent');
var mysql = require('mysql');
const config = process.env;
const verifyToken = (req, res, next) => {
  const token =
    req.body.token || req.query.token || req.headers["x-access-token"] || req.headers['Authorization'];
    var source = req.headers['x-touch-properties']
    // var ua = useragent.parse(source);
    var isMobile = false;
    if (source && source.length) {
try {
  var touch = JSON.parse(source);
  if (touch && touch.maxTouchAllowed && touch.maxTouchAllowed > 0) {

    isMobile = true;

  }
  console.log(isMobile);
} catch(e) {
  console.log(e);
}
  

    }
    console.log(source);
  if (!token) {
    return res.status(403).json({status: 403});
    
  }
  try {
    const decoded = jwt.verify(token, config.TOKEN_KEY);
    console.log(decoded);
    req.user = decoded;
    req.body.user = decoded;
    console.log(1)
    if (isMobile) {
      console.log(2)
      var con = getConnection(); 
      // check if user already exist
      // Validate if user exist in our database
      con.connect( async function(err) {
        if (err) throw err;
        let description = req.body.type || 'Unknown';
        if (description) {
          const sqlInsert = `INSERT INTO Logger (loggedBy, title, description) VALUES ('${decoded.userId}', '${decoded.email} Logged from mobile', '${description}')`;      
          await con.query (sqlInsert, (err, result)=> {
            console.log(err);
          if (err) throw (err);
         })
        }
        
      });

    }
  } catch (err) {
    return res.status(401).json({status: 401});
  }
  return next();
};
function getConnection() {
  // return mysql.createConnection({
  //   host: "localhost",
  //   user: "kemin",
  //   password: "w31JbTb-Z]f1saf0",
  //   database: "hrms-hubresolution"
  // });   
  return mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "SetRootPasswordHere",
    database: "hrms-hubresolution"
  });  
}

module.exports = verifyToken;