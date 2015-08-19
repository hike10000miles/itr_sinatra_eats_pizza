require 'sinatra'
require_relative 'pizza'

get '/' do
  erb :index
end

# Handles showing all pizzas
get '/pizzas' do
  @pizza_collection = []
  erb :all_pizzas
end

# Handles showing form for a new pizza
get '/pizzas/new' do
  erb :new
end

# Handles showing one pizza
get '/pizzas/:type' do
end

# Handles posting of a new pizza form
post '/pizzas' do
  @pizza = Pizza.new
  @pizza.size = params[:size]
  erb :created_pizza
end



