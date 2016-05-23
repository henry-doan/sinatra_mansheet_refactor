require 'sinatra'
require 'pry'

get '/' do
	erb :main
end

get '/cl' do
	erb :cl
end

get '/search' do
	erb :search
end
get '/results' do
	erb :results
end

get '/mv' do
	erb :result
	`man mv`
end

get '/cp' do
	`man cp`
end

get '/mkdir' do
	`man mkdir`
end

get '/ls' do
	`man ls`
end

get '/rm' do
	`man rm`
end

post '/search' do
	'man #{params[:search]}'
end
