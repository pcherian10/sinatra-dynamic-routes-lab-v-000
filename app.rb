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
    @phrase = params[:phrase]
    @new_phrase = ""
    @num.times do |num|
      @new_phrase += "#{@phrase}"
    end
    @new_phrase
  end

end
