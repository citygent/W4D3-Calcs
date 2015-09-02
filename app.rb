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

post '/Basic' do 
  case params[:operator]
    when 'plus' then @answer = params[:num1].to_f + params[:num2].to_f
    when 'minus' then @answer = params[:num1].to_f - params[:num2].to_f
    when 'multiply' then @answer = params[:num1].to_f * params[:num2].to_f
    when 'divide' then @answer = params[:num1].to_f / params[:num2].to_f
  else 
    @answer = 'Invalid something-or-other'
  end
  @title = 'Basic'
  erb :Basic
end