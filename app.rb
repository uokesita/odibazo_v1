require 'rubygems'
require 'sinatra'
require 'haml'
require 'flickr_fu'


helpers do
  def partial(page, options={})
    erb page, options.merge!(:layout => false)
  end
end

get '/' do
  haml :index
end

get '/bio' do
  haml :index
end

get '/photo' do
  partial :photo
end

get '/print' do
  partial :print
end

get '/paint' do
  partial :paint
end

get '/video' do
  partial :video
end