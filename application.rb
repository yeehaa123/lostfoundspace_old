require 'sass'
require 'v8'
require 'coffee-script'
require 'rubygems'
require 'sinatra'
require 'pry'
require 'haml'

get '/' do
  haml :index 
end

get '/styles.css' do
	sass :styles
end


get '/js/app.js' do
  coffee :app
end
