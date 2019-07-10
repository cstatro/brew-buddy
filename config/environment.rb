ENV["SINATRA_ENV"] ||= "development"


require "bundler/setup"
require "sinatra/activerecord"
Bundler.require
require 'require_all'
require_all 'app'
require 'pry'



connection_details = YAML::load(File.open('config/database.yml'))[ENV["SINATRA_ENV"]]
ActiveRecord::Base.establish_connection(connection_details)

