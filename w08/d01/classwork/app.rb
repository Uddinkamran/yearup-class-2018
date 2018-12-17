require 'sinatra'
require "sinatra/reloader"

register Sinatra::Reloader

get '/' do
  erb :homepage, :layout =>  :fan_page_layout
end

get '/about' do
  erb :about, :layout =>  :fan_page_layout
end

get '/frank-says' do
  erb :frank_says, :layout =>  :fan_page_layout
end

post '/making_frank_say' do
  puts params
  @message = params["message"]
  @username = params["username"]
  erb :frank_said, :layout =>  :fan_page_layout
end