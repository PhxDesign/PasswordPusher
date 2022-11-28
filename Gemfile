source 'https://rubygems.org'

ruby ENV['CUSTOM_RUBY_VERSION'] || '>=3.1.0'


group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.2.0'
  # gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Visual Studio Additions
  gem 'rubocop'
  gem 'ruby-debug-ide'
  gem 'debase', '0.2.5.beta2'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.37.1', '< 4.0'
  gem 'selenium-webdriver', '4.2.1'

  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'

  gem 'minitest'
  gem 'minitest-reporters'
  gem 'minitest-rails', '>= 6.1.0'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug', platforms: [:mri, :mingw, :x64_mingw]
end

gem 'rack-cors'
gem 'rack-attack'

# OSX: ../src/utils.h:33:10: fatal error: 'climits' file not found
# From:
# # 1. Install v8 ourselves
# $ brew install v8-315
# # 2. Install libv8 using the v8 binary we just installed
# $ gem install libv8 -v '3.16.14.19' -- --with-system-v8
# # 3. Install therubyracer using the v8 binary we just installed
# $ gem install therubyracer -- --with-v8-dir=/usr/local/opt/v8@315
# # 4. Install the remaining dependencies
# $ bundle install
# gem 'therubyracer'
#
gem 'lockbox'
gem 'high_voltage'
gem 'kramdown', require: false

# Reduces boot times through caching; required in config/boot.rb

# Use SCSS for stylesheets
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 4.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0', '>= 5.0.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11', '>= 2.11.5'
gem 'webpacker', '>= 5.4.3'
gem 'will_paginate', '~> 3.3.0'
gem 'will_paginate-bootstrap-style'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'sprockets', '~> 4.0', '>= 4.0.2'
gem 'foreman'
gem 'jquery-rails', '>= 4.5.0'
gem 'config'
gem 'route_translator', '>= 13.0.0'
gem 'translation'
gem 'mail_form', '>= 1.9.0'
gem 'apipie-rails'
gem 'simple_token_authentication', '~> 1.17', '>= 1.17.0'
gem 'lograge'

# Fix for https://github.com/pglombardo/PasswordPusher/issues/397
# In place until Rails 7.0.1 upgrade
gem 'net-smtp', require: false
gem 'net-imap', require: false
gem 'net-pop', require: false

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg'
  gem 'sentry-ruby'
  gem 'sentry-rails', '>= 5.5.0'
end

group :private do
  gem 'sqlite3'
end

group :production, :private do
  gem 'rack-timeout'
  gem 'rack-throttle'
end
