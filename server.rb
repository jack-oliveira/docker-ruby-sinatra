require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  haml :index
end

post "/" do
  @name = params[:name]
  haml :post
end

