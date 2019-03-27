require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort('The Rails environment is running in production mode!')if Rails.env.production?
require 'rspec/rails'
require 'shoulda/matchers'
require 'capybara/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Factory-bot
  config.include FactoryBot::Syntax::Methods
 
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  
  # ShouldaMatchers
  Shoulda::Matchers.configure do |conf|
    conf.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end

  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  # DatabaseCleaner
  config.before(:suite) { DatabaseCleaner.clean_with(:truncation) }
  config.before(:each) { DatabaseCleaner.strategy = :transaction }
  config.before(:each, :js => true) { DatabaseCleaner.strategy = :truncation }
  config.before(:each) { DatabaseCleaner.start }
  config.after(:each) { DatabaseCleaner.clean }
end
