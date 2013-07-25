require 'sinatra/base'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  get '/' do
    haml :index
  end
  
  get '/events' do
    haml :events
  end

end
