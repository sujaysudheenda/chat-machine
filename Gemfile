source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.rc1', '< 5.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise'

gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'less-rails', '~> 2.7'
gem 'less-rails-bootstrap', '~> 3.3.5'
gem 'therubyracer', '~> 0.12.2'

gem 'haml', '~> 4.0'
gem 'haml-rails', '~> 0.5.3'
gem 'hamlbars', '~> 2.0'
gem 'redis', '~> 3.2'
gem 'puma'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '>= 5.0.0.beta2'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :production do
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry', '~> 0.10.3'
  gem 'pry-byebug', '~> 3.3.0'
  gem 'pry-doc', '~> 0.8.0'
  gem 'pry-rails', '~> 0.3.2'
  gem 'pry-stack_explorer', '~> 0.4.9'
end

  group :test do
    gem 'rspec-rails', '~> 3.5'
    gem 'simplecov', require: false
    gem 'rails-controller-testing', '~> 1.0'
  end

group :development do
  gem 'sqlite3'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

