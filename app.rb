require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  @title = 'Home'
  erb :home
end


get '/Basic' do
  @title = 'Basic'
  erb :Basic
end

get '/Mortgage' do
  @title = 'Mortgage'
  erb :Mortgage
end

get '/BMI' do
  @title = 'BMI'
  erb :BMI
end

get '/Trip' do
  @title = 'Trip'
  erb :Trip
end
