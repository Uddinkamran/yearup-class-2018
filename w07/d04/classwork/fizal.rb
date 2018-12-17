require 'sinatra'
require('forecast_io')
require('geocoder')
require 'erb'

ForecastIO.api_key = 'a65700d3d69f77123ba1cbece8365328'

get '/weather' do
  #get the latitude and longitude
  lat_lon =  Geocoder.search("nyc").first.coordinates
  
  # get a weather forecast
  
  forecast = ForecastIO.forecast(lat_lon[0], lat_lon[1])
  @weather= forecast["currently"]["summary"]
  erb :index
  
  end

# get '/random' do
#   ## when someone asks for localhost:3000/random
#   erb :index
# end

# get '/frank-says' do
#   #when someone asks for localhost:3000/frank-says
#   '<h1>Diddy</h1>'
# end



