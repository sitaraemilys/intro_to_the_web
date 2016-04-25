require 'sinatra'
set :session_secret, 'super secret' #sinatra secures session data

get '/' do
  "hello"
end

get '/secret' do
  "shhhh"
end

get '/harry' do
  "hello harry"
end

get '/sity' do
  "sitypop"
end

get '/random_cat' do
  @name = ["Amigo", "Oscar", "Poppet", "Mr Oyster"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end
