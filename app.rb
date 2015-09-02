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

post '/Mortgage' do 
  @loan = params[:loan].to_f
  @apr = ((params[:apr].to_f) / 100) / 12
  @term = params[:term].to_f
  @memo = (1 + @apr)**@term
  @answer = (@loan * @apr * (@memo / (@memo - 1))).round(2)
  # binding.pry
  @title = 'Mortgage'
  erb :Mortgage
end

post '/BMI' do
  @weight = params[:mass].to_f
  @height = params[:height].to_f
  case params[:units]
  when 'imperial' then (@answer = @weight / (@height*@height) * 703).round(2)
  when 'metric' then @answer = (@weight / @height**2).round(2)
  else 
    @answer = 'your mum'
  end
  @title = 'BMI'
  erb :BMI
end

post '/Trip' do 
  @distance = params[:distance].to_f
  @mpg = params[:mpg].to_f
  @cost = params[:cost].to_f
  @speed = params[:speed].to_f

  @time = (@distance / @speed).round(2)
  @realMPG = @speed > 60 ? [0, @mpg - (@speed - 60) * 2].max : @mpg
  @realCost = (@distance / @realMPG * @cost).round(2)

  @title = 'Trip'
  erb :Trip
end




