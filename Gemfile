ruby '2.1.2'
#ruby=2.1.2@law
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported run times
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# ==========================================
#             Additional GEMs
# ==========================================

# Improve turbolink for jquery app
gem 'jquery-turbolinks', '~> 2.1.0'

# Animated Progress link/screen transaction
gem 'nprogress-rails', '~> 0.1.6.7'

# Session manager
gem 'devise', '~> 3.5.1'

# Color to the prints on console (PUTS)
gem 'colorize', '~> 0.7.7'

# Gem for UPLOAD files
# Gem for UPLOAD files
gem 'paperclip', '~> 4.3.0'
gem 'aws-sdk', '~> 2.1.2'
gem 's3_direct_upload', '~> 0.1.7'

# Faster & easier HTML
gem 'slim-rails', '~> 3.0.1'

# Gem to use cURL
gem 'curb', '~> 0.8.8'

# RESTClient to simplify requests
gem 'rest-client', '~> 1.8.0'

# Format legal documents
gem 'cpf_cnpj'

# Schedule tasks
gem 'rufus-scheduler', '~> 3.1.3'

# BROpenData --> Access to BR Gov OpenData WebServices
gem 'br_open_data', '~> 0.0.2'

# for the social-buttons
gem 'jasny_bundle_fixed', '~> 1.0.0'

# IconFonts - FontAwesome
gem 'font-awesome-rails', '~> 4.2.0.0'

# Rails google materialize (ATTENTION, MATERIAL 0.95.X NOT WORKING)
gem 'materialize-sass', '0.96.1'

# To create the time_line
gem 'bourbon', '~> 4.2.3'

# Admin bought Theme
gem 'admin_materialize', '~> 0.1.0', git:'http://git.deskti.com/sistemas/admin_materialize.git'

=begin
 ######################    Production GEMs    #################################
=end

# Heroku pre compile
gem 'rails_12factor', group: :production

# Tracking production events
gem 'newrelic_rpm'

group :development, :test do
  # RSPec for BDD pratices
  gem 'rspec-rails', '~> 3.3.2'

  # Better Errors for fast debug from the view on the browser
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller'

  # Option to not use Fixtures (FactoryGirl)
  gem 'factory_girl_rails', '~> 4.5.0'

  # Create readable attrs values
  gem 'faker', '~> 1.4.3'

  # RSPec Plugin for testing Views
  gem 'capybara', '~> 2.4.4'

  # RSPec Plugin for code-coverage
  gem 'simplecov', '~> 0.10.0'
end