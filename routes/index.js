var express = require('express');
var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = (config.kidsmode) ? 'main_kids' : 'home';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render(toRender, {
    title: 'Hello',
    message : "Welcome to Roku",
    message2 : "Please Select One of the Catagries Above",
    mainpage : true,
    cms : false,
    kidsmode : config.kidsmode
  });
});

router.get('/cms', (req, res) => {
  console.log('hit the cms route');
  res.render('cmsForm', {
    cms : true,
    mainpage : false
  });
});

module.exports = router;
