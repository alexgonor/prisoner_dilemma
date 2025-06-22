source "https://rubygems.org"

gem "bootsnap", require: false
gem "importmap-rails"
gem "jbuilder"
gem "openai_chatgpt"
gem "pg", "~> 1.5"
gem "puma", ">= 5.0"
gem "rails", "~> 7.2.1"
gem "redis", ">= 4.0.1"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "brakeman", require: false
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "dotenv-rails"
  gem "factory_bot_rails", "~> 6.2"
  gem "pry"
  gem "rspec-rails", "~> 7.0.0"
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "image_processing", "~> 1.14"
