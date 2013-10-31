source 'https://rubygems.org'
source 'https://gems.gemfury.com/***REMOVED***/'

gem "rails", "3.2.13"
gem "jquery-rails"

gem "quiet_assets", "~> 1.0.1"
gem "bootstrap-sass", "~> 2.1.0.1"

gem "g5_component_garden", "~> 0.4"

group :assets do
  gem "sass-rails", "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier", ">= 1.0.3"
end

group :development, :test do
  gem "dotenv-rails", "~> 0.9.0"
  gem "rspec-rails"
  gem "guard-rspec"
  gem "guard-spork"
  gem 'rb-fsevent', '~> 0.9.1'
end

group :production do
  gem "thin", "~> 1.5.0"
  gem "newrelic_rpm"
end
