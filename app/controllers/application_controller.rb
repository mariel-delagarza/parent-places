require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/places" do
    @places = Place.all
    erb :'places/index'
  end

  get "/places/:id" do
    @place = Place.find(params[:id])
    erb :'places/show'
  end




end
