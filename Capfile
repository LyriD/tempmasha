require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rvm'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require './lib/capistrano_patch'
require './lib/configs_loader'

Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }
