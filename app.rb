require 'sinatra'
# require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
	"I hate Ice Cream. Hello. Howdy!"
end

get '/random-cat' do
  @name = %w(Amigo Misty Almond).sample
	erb(:index)
end

get '/named-cat' do
	p params
  @name = params[:name]
	erb(:index)
end