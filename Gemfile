source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'rails-i18n', '~> 5.0.0'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootstrap-sass'
gem 'simple_form'

group :assets do
  gem 'coffee-rails', '~> 4.2'
  gem 'uglifier', '>= 1.3.0'
  gem 'sass-rails', '~> 5.0'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.6'
  gem 'capybara'
  gem 'faker'
  gem 'spring-commands-rspec'
  gem 'selenium-webdriver', '~> 2.53.4'
  gem 'chromedriver-helper'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'rails-controller-testing'
  gem 'brazilian_documents', '~> 0.1.4'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
