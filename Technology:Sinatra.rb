#!/usr/bin/env ruby
require 'sinatra'

# A static route
get '/' do
    return 'Hello, World!'
end

# A route with a parameter
get '/hello/:name' do
    name = params[:name]
    return "Hello, #{name}!"
end
