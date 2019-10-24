require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/PigLatinizer' do
pl.new = PigLatinizer.new 
@piglatin = pl.piglatinize(params[:user_phrase])
erb :results
  end
end
