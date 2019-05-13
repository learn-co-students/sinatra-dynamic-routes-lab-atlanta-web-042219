require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    x = params[:number].to_f
    (x * x).to_s
  end

  get '/say/:number/:phrase' do
    answer = []

    params[:number].to_i.times do
      answer << params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    x = params[:number1].to_f
    y = params[:number2].to_f
    case params[:operation]
    when 'add'
      (x + y).to_s
    when 'subtract'
      (x - y).to_s
    when 'divide'
      (x / y).to_s
    when 'multiply'
      (x * y).to_s
    end
  end

end