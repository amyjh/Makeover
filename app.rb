require 'sinatra/base'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)

  get '/' do
    haml :index
  end
  
  get '/events' do
    haml :events
  end
  
  get '/about' do
    haml :about
  end

  get '/browse' do
    haml :browse
  end

  get '/dashboard' do
    haml :dashboard
  end

  get '/tickets' do
    haml :tickets
  end

  get '/account' do
    haml :account
  end
  
  get '/checkout' do
    haml :checkout
  end
end
