require 'sinatra/base'
require 'sinatra/assetpack'

class App < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack
  
  Less.paths <<  "#{App.root}/app/css" 
  
  assets do
    serve '/js',     from: 'app/js'
    serve '/css',    from: 'app/css'
    serve '/images', from: 'app/images'
    serve '/fonts', from: 'app/fonts'
    
    css :bootstrap, [
      '/css/bootstrap.css'
    ]
  end

  get '/' do
    haml :index
  end
end
