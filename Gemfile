source 'https://rubygems.org'

gem 'rails', '3.2.15'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'slim'
gem 'compass-rails'
gem 'compass-normalize'
gem 'susy', git: 'https://github.com/ericam/susy.git'
gem 'autoprefixer-rails'
# Refinery CMS
gem 'refinerycms', '~> 2.1.0'

# Optionally, specify additional Refinery CMS Extensions here:
gem 'refinerycms-acts-as-indexed', '~> 1.0.0'
gem 'refinerycms-blog', '~> 2.1.0'
gem 'refinerycms-inquiries', '~> 2.1.0'
# gem 'refinerycms-news', '~> 2.1.0'
gem 'refinerycms-copywriting'

#  gem 'refinerycms-search', '~> 2.1.0'
gem 'refinerycms-page-images', '~> 2.1.0'

gem 'turbolinks'
gem 'jquery-turbolinks'

gem 'refinerycms-saloons', :path => 'vendor/extensions'
gem 'refinerycms-vacancies', :path => 'vendor/extensions'




group :development, :test do

  gem 'capistrano', '3.1.0'
  gem 'capistrano-bundler', '1.1.2'
  gem 'capistrano-rvm'
  gem 'capistrano-rails'
end

group :production do
  gem 'unicorn'
  # gem 'mysql2'
  gem 'therubyracer'
end

gem 'mailgun_rails'

gem 'refinerycms-subscribers', :path => 'vendor/extensions'