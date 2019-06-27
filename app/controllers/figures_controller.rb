class FiguresController < ApplicationController
  # configure do 
  #   set :views, 'app/views'
  # end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])

    if !params[:title].empty?
      @figure.titles << Title.create(params[:title])
    end
    
    if !params[:landmark].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end
    
    redirect "/figures"
  end

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    @landmarks = Landmark.all
    @titles = Title.all
    erb :'/figures/edit'
  end

  patch '/figures/:id' do
    # binding.pry
    @figure = Figure.find(params[:id])
    @figure.update(params[:figure])
    if !params[:title].empty?
      @figure.titles << Title.create(params[:title])
    end
    
    if !params[:landmark].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end
    redirect to "/figures/#{@figure.id}"
  end

end
