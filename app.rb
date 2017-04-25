require 'sinatra'
require 'sinatra/reloader'
require './lib/places_youve_been'
require 'pry'
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/addplace') do

  new_place = Places.new(params.fetch('place'))
  new_place.store()
  @place_desc = new_place.description()

  @places_len = Places.all_len

  erb(:output)
end

get('/clear-list') do
  Places.clearall
  @places_len = Places.all_len
  erb(:output)
end
