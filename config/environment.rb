# Set up gems listed in the Gemfile.
# See: http://gembundler.com/bundler_setup.html
#      http://stackoverflow.com/questions/7243486/why-do-you-need-require-bundler-setup
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# Require gems we care about
require 'rubygems'
require 'forecast_io'
require 'geocoder'

require 'uri'
require 'pathname'

require 'logger'

require 'sinatra'
require "sinatra/reloader" if development?

require 'erb'

# Some helper constants for path-centric logic
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s
set :root, APP_ROOT
# require 'carrierwave'
# require 'carrierwave/orm/activerecord'

# Set up the controllers and helpers
Dir[APP_ROOT.join('app', 'uploaders', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }

ForecastIO.configure do |configuration|
  configuration.api_key = 'dc7ba4be17e441310aafb5fa6419dc4d'
end
