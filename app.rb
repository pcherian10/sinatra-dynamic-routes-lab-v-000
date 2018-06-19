require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:num' do
    @num = params[:num].to_i
    @square = @num * @num
    "#{@square}"
  end

  get '/say/:num/:phrase' do
    @num = params[:num].to_i
      @num.times |el| do
        "#{params[:phrase]}"
      end

  end

end
