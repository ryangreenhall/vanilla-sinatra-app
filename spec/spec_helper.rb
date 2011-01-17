require 'rubygems'
require 'webrat'
require 'rack/test'

module MyHelpers
  def app
    Sinatra::Application
  end
end

Webrat.configure do |config|
  config.mode= :rack
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include Webrat::Methods
  config.include Webrat::Matchers
  config.include MyHelpers
end