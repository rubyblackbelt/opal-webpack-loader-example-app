source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'                                                # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sqlite3'                                                          # Use sqlite3 as the database for Active Record
gem 'puma', '>= 3.11'                                                  # Use Puma as the app server
# gem 'mini_racer', platforms: :ruby                                   # See https://github.com/rails/execjs#readme for more supported runtimes

gem 'jbuilder', '>= 2.5'                                               # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'redis', '>= 4.0'                                                # Use Redis adapter to run Action Cable in production
# gem 'bcrypt', '>= 3.1.7'                                             # Use ActiveModel has_secure_password

# gem 'mini_magick', '>= 4.8'                                          # Use ActiveStorage variant

# gem 'capistrano-rails', group: :development                          # Use Capistrano for deployment

gem 'c_lexer'                                                          # accelerate opal compiler
gem 'opal', github: 'janbiedermann/opal', branch: 'es6_import_export'  # need this branch
gem 'opal-webpack-compile-server', '0.1.7', require: false             # and this, its started by the yarn run commands and serves opal-webpack-loader by compiling ruby files for it

# need the pinata branch
gem 'hyper-component',     github: 'ruby-hyperloop/hyper-component',    branch: 'pinata'
gem 'hyper-mesh',          github: 'ruby-hyperloop/hyper-mesh',         branch: 'pinata'
gem 'hyper-model',         github: 'ruby-hyperloop/hyper-model',        branch: 'pinata'
gem 'hyper-operation',     github: 'ruby-hyperloop/hyper-operation',    branch: 'pinata'
gem 'hyper-react',         github: 'ruby-hyperloop/hyper-react',        branch: 'pinata'
gem 'hyper-router',        github: 'ruby-hyperloop/hyper-router',       branch: 'pinata'
gem 'hyper-store',         github: 'ruby-hyperloop/hyper-store',        branch: 'edge'
gem 'hyperloop',           github: 'ruby-hyperloop/hyperloop',          branch: 'pinata'
gem 'hyperloop-config',    github: 'ruby-hyperloop/hyperloop-config',   branch: 'pinata'

gem 'bootsnap', '>= 1.1.0', require: false                             # Reduces boot times through caching; required in config/boot.rb

gem 'config'                                                           # Settings
gem 'devise'                                                           # Authentication

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]                  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'web-console', '>= 3.3.0'                                        # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  # gem 'spring'                                                       # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring-watcher-listen', '>= 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'                                   # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'                                            # Easy installation and use of chromedriver to run system tests with Chrome
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]     # Windows does not include zoneinfo files, so bundle the tzinfo-data gem

group :development do
  # gem 'foreman'                                                      # not needed if you use node-foreman
end
