require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:num' do
    @num1 = params[:num].to_i
    @square = @num * @num
    @square
  end

end
