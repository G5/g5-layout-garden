source 'https://rubygems.org'
ruby '2.1.1'

gem "rails", "4.0.1"
gem "jquery-rails"

gem "quiet_assets", "~> 1.0.1"
gem "bootstrap-sass", "~> 2.1.0.1"
gem "microformats2", "~> 2.0.0"

gem "sass-rails", "~> 4.0.0"
gem "coffee-rails", "~> 4.0.0"
gem "uglifier", ">= 1.0.3"

group :development, :test do
  gem "dotenv-rails"
  gem "rspec-rails"
  # ruby request specs
  gem "capybara"
  # ruby spec coverage
  gem "simplecov", require: false
  gem "codeclimate-test-reporter", require: false
end

group :production do
  gem "thin", "~> 1.5.0"
  gem "rails_12factor"
  gem "newrelic_rpm"
  gem "honeybadger"
end
