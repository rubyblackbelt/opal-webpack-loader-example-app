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

## TL;DR; Running this app

1. git clone
2. yarn install
3. bundle install
4. nf start
5. browse to http://localhost:5000 
