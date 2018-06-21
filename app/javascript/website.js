// import stylesheets
import '../assets/stylesheets/website.scss';

import jQuery from 'jquery';
import Materialize from 'materialize-css/dist/js/materialize';

global.jQuery = jQuery;
global.$ = jQuery;
global.Materialize = Materialize;


$(document).ready(function(){
	Materialize.Sidenav.init('.sidenav', { isFixed: true });
	Materialize.AutoInit();

	// Materialize.toast({html: 'Welcome', displayLength: 4000, inDuration: 500, outDuration: 500 })
});

// required for hot reloading to work
if (module.hot) {
  module.hot.accept('./website.js', function() {
    console.log('Accepting the updated website_pack module!');
  })
}
