// import stylesheets
import '../assets/stylesheets/website.scss';

// required for hot reloading to work
if (module.hot) {
  module.hot.accept('./website.js', function() {
    console.log('Accepting the updated website_pack module!');
  })
}
