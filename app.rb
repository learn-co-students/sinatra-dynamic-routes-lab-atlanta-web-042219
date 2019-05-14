require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num * @num).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."

  end
########## ANOTHER OPTION ##############
  # get '/:operation/:num1/:num2' do
  #   ops = {
  #     "add" => :+,
  #     "subtract" => :-,
  #     "multiply" => :*,
  #     "divide" => :/,
  #     "modulo" => :%,
  #     "exponent" => :**
  #   }
  #   num1 = params[:number1].to_i
  #   num2 = params[:number2].to_i
  #   method_name = ops[params[:operation]]
  #   num1.send(method_name, num2).to_s
  # end
##########################################
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
      when "add"
        (@num1 + @num2).to_s
      when "subtract"
        (@num1 - @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
      when "modulo"
        (@num1 % @num2).to_s
      end
  end

end
