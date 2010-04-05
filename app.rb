require 'rubygems'
require 'sinatra'
require 'haml'
require 'flickr_fu'


helpers do
  def partial(template, options={})
    erb(template, options.merge!(:layout=> :'layout'))
  end
end

def getPhotos(type)
  @photo = []
  
  flickr = Flickr.new(File.join('config', 'flickr.yml')) 
  flickr.photos.search(:user_id => "11807027@N03", :tags=>type).each do |o|
    @photo << [:title => o.title, :url => o.url]
  end
end

get '/' do
  haml :index
end

get '/bio' do
  haml :index
end

get '/photo' do
  haml :photo
end

get '/print' do
  haml :print
end

get '/paint' do
  haml :paint
end

get '/video' do
  haml :video
end