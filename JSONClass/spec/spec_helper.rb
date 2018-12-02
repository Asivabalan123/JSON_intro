require 'json'
require 'httparty'
require 'dotenv'
require_relative '../json_class_walkthrough'
Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end
