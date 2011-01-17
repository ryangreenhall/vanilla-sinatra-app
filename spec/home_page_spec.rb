require File.dirname(__FILE__) + '/spec_helper'
require File.dirname(__FILE__) + '/../lib/app'

describe 'The home page' do
  it 'should say hello' do
    visit "/"
    response_body.should contain 'Hello'
  end
end