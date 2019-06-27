class ApplicationController < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }
  # set :views, 'app/views'
  register Sinatra::Twitter::Bootstrap::Assets

  get '/' do
    erb :"application/index"
  end
end
