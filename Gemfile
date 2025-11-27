# Gemfile
source "https://rubygems.org"

gem "rails", "~> 8.1.1"

gem "propshaft"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "devise", "~> 4.9"
gem "rack-cors"
gem "bootstrap", "~> 5.3"
gem "dartsass-rails"
gem "jwt"
gem "bcrypt"

# Database-backed adapters
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Performance & deployment
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false

# Windows only
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Development & Test only
group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails", "~> 6.1"
  gem "factory_bot_rails"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end