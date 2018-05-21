// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
import './../stylesheets/application.css'
import * as React from 'react';
import * as ReactDOM from 'react-dom';
import * as History from 'history';
import * as ReactRouter from 'react-router';
import * as ReactRouterDOM from 'react-router-dom';
import * as ReactRailsUJS from 'react_ujs';

global.React = React;
global.ReactDOM = ReactDOM;
global.History = History;
global.ReactRouter = ReactRouter;
global.ReactRouterDOM = ReactRouterDOM;
global.ReactRailsUJS = ReactRailsUJS;

import blu from './test.js';
blu();
import bla from './ruby.rb';
bla();
Opal.require('app/assets/javascripts/ruby');






// require hyperloop-loader

if (module.hot) {
    module.hot.accept('./application.js', function() {
        console.log('Accepting the updated printMe module!');
        printMe();
    })
}
