require 'rubygems'
require 'bundler'
Bundler.require(:default, :assets, ENV['RACK_ENV'])

use Rack::CanonicalHost, ENV['CANONICAL_HOST'] if ENV['CANONICAL_HOST']

require 'sprockets'
map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/javascripts'
  sprockets.append_path 'assets/stylesheets'
  sprockets.append_path 'assets/images'
  run sprockets
end

require './fathomworks'
run FathomWorks
