source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'
gem 'bootstrap', '~> 4.4.1'
gem 'jbuilder', '~> 2.7'
# Required for Bootstrap's Javascript
gem 'jquery-rails', '~> 4.3.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-contrib', '~> 2.2.0'
gem 'rails', '~> 6.0.3.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise', '>= 4.7.1'
gem 'devise-i18n', '~> 1.9.1'
gem 'factory_bot_rails', '~> 5.1.1'
gem 'faker', '~> 2.11.0'
gem 'font_awesome5_rails', '~> 1.1.0'
gem 'rails_event_store', '~> 0.43.0'
gem 'rubocop', require: false
gem 'sidekiq', '~> 6.0.6'
gem 'uglifier', '~> 4.2.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 3.32.1'
  gem 'erb_lint', '~> 0.0.32', require: false
  gem 'selenium-webdriver', '~> 3.142.7'
  gem 'webdrivers', '~> 4.0'

  # Add rspec gems to development as well as test so the
  # commands work without having to prefix RAILS_ENV=test
  gem 'rspec-rails', '~> 4.0.0'

  gem 'rubocop-rails', '~> 2.5.2', require: false
  gem 'rubocop-rspec', '~> 1.38.1', require: false
end

group :development do
  gem 'better_html', '~> 1.0.14'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
