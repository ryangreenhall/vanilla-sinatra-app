require "rubygems"
require "bundler/setup"
require "sinatra"
require 'haml'

set :root, File.join(File.dirname(__FILE__), "../")

get '/' do
  haml :hello 
end