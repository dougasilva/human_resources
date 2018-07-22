source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.6'
gem 'rails-i18n', '~> 5.0.0'
gem 'responders', '~> 2.0'
gem 'simple_form'
gem 'sqlite3'
gem 'turbolinks', '~> 5'

group :assets do
  gem 'coffee-rails', '~> 4.2'
  gem 'sass-rails', '~> 5.0'
  gem 'uglifier', '>= 1.3.0'
end

group :development, :test do
  gem 'brazilian_documents', '~> 0.1.4'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker'
  gem 'pry-rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.6'
  gem 'rubocop'
  gem 'rubocop-rspec'
  gem 'selenium-webdriver', '~> 2.53.4'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'spring-commands-rspec'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'simplecov', require: false
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
