source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass'
gem 'jbuilder'
gem 'puma'
gem 'rails', '~> 5.2.2'
gem 'rails-i18n'
gem 'responders'
gem 'simple_form'
gem 'sqlite3', '~> 1.3.6'
gem 'turbolinks'

group :assets do
  gem 'coffee-rails'
  gem 'sass-rails'
  gem 'uglifier'
end

group :development, :test do
  gem 'brazilian_documents'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.6'
  gem 'rubocop'
  gem 'rubocop-rspec'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'spring-commands-rspec'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'database_cleaner'
  gem 'simplecov', require: false
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
