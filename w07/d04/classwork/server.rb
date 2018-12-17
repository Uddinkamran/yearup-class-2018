require 'sinatra'
require "sinatra/reloader"
require('forecast_io')
require('geocoder')

register Sinatra::Reloader

ForecastIO.api_key = 'a65700d3d69f77123ba1cbece8365328'

get '/' do
  puts params
  #get the latitude and longitude
  lat_lon =  Geocoder.search(params["city"]).first

  if lat_lon == nil
    @city = params["city"]
    erb :error
  else
    # get a weather forecast
    forecast = ForecastIO.forecast(lat_lon.coordinates[0], lat_lon.coordinates[1])
    @tomorrow = forecast["daily"]["data"][0]["summary"]
    @city = params["city"].upcase
    @temp = forecast["currently"]["temperature"]
    #add the weather to an instance variable
    @weather = forecast["currently"]["summary"]
    erb :index
  end
end

#dynamic routing
get '/weather/:city' do
  puts ""
  puts params
  puts ""
  #get the latitude and longitude
  lat_lon =  Geocoder.search(params["city"]).first
  if lat_lon == nil
    @city = params["city"]
    erb :error
  else
    # get a weather forecast
    forecast = ForecastIO.forecast(lat_lon.coordinates[0], lat_lon.coordinates[1])
    @tomorrow = forecast["daily"]["data"][0]["summary"]
    @city = params["city"].upcase
    @temp = forecast["currently"]["temperature"]
    #add the weather to an instance variable
    @weather = forecast["currently"]["summary"]
    erb :index
  end
end