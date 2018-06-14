// import stylesheets
import '../assets/stylesheets/app.scss';

// basics for hyperloop
import React from 'react';
import ReactDOM from 'react-dom';
import * as History from 'history';
import * as ReactRouter from 'react-router';
import * as ReactRouterDOM from 'react-router-dom';
import * as ReactRailsUJS from 'react_ujs';

// for lazy loading
import ReactLoadable from 'react-loadable';

global.React = React;
global.ReactDOM = ReactDOM;
global.History = History;
global.ReactRouter = ReactRouter;
global.ReactRouterDOM = ReactRouterDOM;
global.ReactRailsUJS = ReactRailsUJS;

// for lazy laoding
global.ReactLoadable = ReactLoadable;

// same for jQuery
import jQuery from 'jquery';
global.jQuery = jQuery;
global.$ = jQuery;

// example for importing a component framework
// import * as Sem from 'semantic-ui-react';
// global.Sem = Sem;

// sometime accessing the .default is necessary
// import * as React_TimeAgo from 'react-timeago';
// global.ReactTimeAgo = React_TimeAgo.default;

// example for pusher
// import Pusher from 'pusher-js';
// global.Pusher = Pusher;

// set global Cordova, this allows for:
// if `Cordova == true`
//   # ON CORDOVA APP
// else
//   # ON WEBSITE
// end
global.Cordova = true;

// all the hyperloop requires go in this file
// it needs to be imported first
import init_app from 'hyperloop_webpack_loader.rb';
// then it needs to initalized, this will register the available opal ruby modules
init_app();
// then it needs to be loaded, this will actually run the code and start the application
Opal.require('hyperloop_webpack_loader');

// this is required for hot reloading to work
if (module.hot) {
    module.hot.accept('./app.js', function() {
        console.log('Accepting the updated app_packs module!');
    })
}