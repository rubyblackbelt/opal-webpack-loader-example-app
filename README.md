# Example App for Ruby-Hyperloop with opal-webpack-loader

## Features
- webpack based build process (no sprockets/no webpacker)
- fast builds
- source maps
- hot reloads for hyperloop code
- hot reloads for css/sass
- hot reloads for app/views
- minification and compression for production
- other webpack features possible
- opal ruby with automatic ES6 imports/exports

## Requirements
are all listed in detail in the Gemfile and package.json. Notable:
- opal es6_import_export branch (based on master 0.11.1-dev)
- hyperloop pinata branch (based on lap28)
- opal-webpack-loader
- opal-webpack-resolver-plugin
- opal-webpack-compile-server
- webpack >= 4.10
- yarn >= 1.7
- node >= 10

for running the servers in development:
a foreman compatible runner, for example node-foreman

`npm i -g node-foreman`

(we had problems with the ruby foreman)

## Introduction to configuration

for managing javascript dependencies yarn is recommended and used here.
All dependencies are listed in `package.json` in the app root directory.
To install all dependencies run `yarn install`.

Packages used in the browser must then be imported in

`app/javascript/*.js`

The files in this directory are configured as entry points for the webpack
build process.

The webpack configuration is in

`config/webpack/*.js`

Each environment has its own config.
The actual build commands refer to the environment configs.
The build commands are configured in `package.json`, in the `scripts` section. There are:
- `yarn run build`, refers to `config/webpack/production.js`, build the production assets
- `yarn run start`, refers to `config/webpack/development.js`, starts webpack-serve to provide assets for development and hot reloading
- `yarn run test`, refers to `config/webpack/test.js`, did not receive much attention yet

`config/webpack/development.js`, `config/webpack/development.js` and `app/javascript/app.js` are commented in details, please see there for further configuration details.

hyperloop requires and imports are in `app/hyperloop/hyperloop_webpack_loader.rb`


## Accessing assets from the app

The standard rails `javascript_include_tag` alone is not very useful here. To support the different asset sources
(production assets with hashes in the filenames, development assets from webpack-serve, etc)
a `owl_include_tag` is provided in `app/helpers/application_helper.rb`. See example usage in the app/views/layouts/*.
To resolve the assets with hashes in the filename for production, the webpack manifest is consulted by the
`OpalWebpackManifest`, located in `config/initalizers/assets.rb`.

## Lazy Loading Components

Is done using react-loadable and webpack imports. Webpack automatically creates and loads at runtime
the necessary chunks of javascript. Example is in app/hyperloop/components/app.rb with the lazy loaded
component being app/hyperloop/components/lazy.rb

## Mobile Apps from the same code base

Included is a example config for cordova. Webpack simply builds a bundle, which is imported from the
cordova main app.js. If hyper-router is used, the initial routes of the various
platforms must be considered, they are empty or pint to index.html.
Certain Hyperloop config and the initial component to be mounted must be configured for the app,
this is done in cordova/www/index.html.

To get going:
- install cordova and the required platform development kits (XCode for IOS, Android Studio for Android etc.)
- go to app root, run `yarn run cordova`, it will build the app js chunks for the cordova app and store it in cordova/www/js/app
- go to the cordova directory, do a `yarn install`, and run the appropriate cordova commands, like `cordova run browser`
- enjoy the app

In principle the config works the same way for react-native or electron.

## Deploy to Heroku (or others)
include the heroku/nodejs buildpack to get recent node, yarn and webpack.
Likewise for others.

## TL;DR; Running this app

1. git clone
2. yarn install
3. bundle install
4. nf start
5. browse to http://localhost:5000 
