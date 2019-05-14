require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @n_reversed = params[:name].reverse
    "Your name, but reversed, is #{@n_reversed}"
  end

  get '/square/:number' do
    @n_squared = (params[:number].to_i ** 2)
    "Your number, but squared, is #{@n_squared}"
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      "The result is #{@num1 + @num2}"
    when "subtract"
      "The result is #{@num1 - @num2}"
    when "divide"
      "The result is #{@num1 / @num2}"
    when "multiply"
      "The result is #{@num1 * @num2}"
    end
  end

end