require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input 
    end 

    post '/pig' do 
        @string = params[:string]
        piggy = PigLatinizer.new
        @latin = piggy.latinize(@string)
        erb :iggedpay
    end 

end