var express = require('express');
var router = express.Router();
var config = require('../config');

// do some checking here => check the default user profile
// ternary statement => MDN ternary
var toRender = 'landing';

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render(toRender, {
    title: 'What Up?',
    message : "handlebars is awesome",
    mainpage : false,
    landing: true,
    cms : false,
    kidsmode : config.kidsmode
  });
});

module.exports = router;
