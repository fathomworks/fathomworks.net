class FathomWorks < Sinatra::Base
  get '/' do
    erb :home
  end
end

