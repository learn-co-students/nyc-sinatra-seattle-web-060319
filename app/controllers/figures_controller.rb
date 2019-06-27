class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    erb :'/figures/index'
  end
  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    if params[:title] != ""
      @title = Title.create(params[:title])
      @figure.titles << @title
    end
    if params[:landmark] != ""
      @landmark = Landmark.create(params[:landmark])
      @figure.landmarks << @landmark
    end
    redirect "/figures/#{@figure.id}"
  end
  get  '/figures/:id' do
    @figure= Figure.find(params[:id])
    erb :'/figures/show'
  end
  get '/figures/:id/edit' do
    @figure= Figure.find(params[:id])
    @landmarks = @figure.landmarks
    @titles = @figure.titles
    erb :'/figures/edit'
  end
  patch '/figures/:id' do
    @figure= Figure.find(params[:id])
    @figure.update(params[:figure])
    if params[:title] != ""
      @title = Title.create(params[:title])
      @figure.titles << @title
    end
    if params[:landmark] != ""
      @landmark = Landmark.create(params[:landmark])
      @figure.landmarks << @landmark
    end
    redirect "/figures/#{@figure.id}"
  end

end
