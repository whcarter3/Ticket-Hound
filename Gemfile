source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
gem 'figaro'
# Gem for accessing Stub Hub API
gem 'httparty'
#adds attr_accessible and attr_protected to methods
gem 'protected_attributes'
# Active Model Serializers
gem 'active_model_serializers'
#postgresql gem
gem 'pg', '~> 0.18.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'
#Use factory_girl for testing
gem "factory_girl_rails", "~> 4.0"

gem 'rspec_junit_formatter', :github => 'circleci/rspec_junit_formatter', group: :test
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

#terminal-notifier-guard
gem 'terminal-notifier-guard', '~> 1.6.1'

#guard gem for continuous testing
group :development do
  gem 'guard'
  gem 'better_errors'
end

#for faking info and other things
gem 'faker', '~> 1.4.3'

#guard for rspec testing
gem 'guard-rspec', require: false 

gem "codeclimate-test-reporter", group: :test, require: nil

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda-matchers'
end
# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

