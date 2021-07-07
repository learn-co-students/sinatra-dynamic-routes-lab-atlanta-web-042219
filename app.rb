require_relative 'config/environment'

require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name]  
    name.reverse
  end

  get '/square/:number' do
    number = params[:number]
    squared = number.to_i * number.to_i
    squared.to_s
  end

  get '/say/:number/:phrase' do
    # Tiffani's first attempt
    # number = params[:number]
    # counter = 0
    # phrase = params[:phrase]
    # string = ""
    # while counter < number.to_i 
    #   string << phrase+" "
    #   # binding.pry
    #   counter += 1
    # end
    # string

    #fancy method from Andrew
    str = ""
    params[:number].to_i.times { str << params[:phrase]+' '}
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # get '/:operation/:number1/:number2' do
  #   if :operation == "add"
  #     (:number1.to_i) + (:number2.to_i)
  #   elsif :operation == "divide"
  #     :number1.to_i / :number2.to_i
  #   elsif :operation == "subtract"
  #     :number1.to_i - :number2.to_i
  #   elsif :operation == "multiply"
  #     :number1.to_i * :number2.to_i
  #   end
  # end 
  # get "/:operation/:number1/:number2" do
  #   @number1 = params[:number1]
  #   @number2 = params[:number2]
  #   @operation = params[:operation]
 
  #   if @operation == "add"
  #    addition = "" 
  #    addition << (@number1.to_i + @number2.to_i)
  #    addition
  #   elsif @operation == "divide"
  #     division = ""
  #     division << (@number1.to_i / @number2.to_i)
  #     division
  #   elsif @operation == "subtract"
  #     subtraction = ""
  #     subtraction << (@number1.to_i - @number2.to_i)
  #     subtraction
  #   elsif @operation == "multiply"
  #     multiplication = " "
  #     multiplication << (@number1.to_i * @number2.to_i)
  #     multiplication
  #   end
  # end

  get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @oper
      when "subtract"
        (@num1 - @num2).to_s
      when "add"
        (@num1 + @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
    end
  end
end