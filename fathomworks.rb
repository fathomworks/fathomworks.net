class FathomWorks < Sinatra::Base
  get '/' do
    haml :home
  end
end

