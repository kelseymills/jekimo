require 'capybara/rspec'
require 'webdrivers/chromedriver'

# Remove 'Capybara starting Puma..' output message when running chrome tests
#
# TODO: Remove this line and update rspec-rails once this commit:
# https://github.com/rspec/rspec-rails/pull/2289 is released
Capybara.configure do |config|
  config.server = :puma, { Silent: true }
end

Capybara.javascript_driver = :selenium_chrome_headless
