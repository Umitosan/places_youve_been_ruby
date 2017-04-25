require 'sinatra'
require 'sinatra/reloader'
require './lib/places_youve_been'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
