var page = require('webpage').create();
page.open('https://do-it.org',  function() {
page.render('shot.png');
phantom.exit();
});



