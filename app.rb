require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		params[:name].reverse
	end

	get '/square/:num' do
		(params[:num].to_i**2).to_s
	end

	get '/say/:num/:phrase' do
		Array.new(params[:num].to_i).map { params[:phrase] }.join(' ')
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		params.map {|key, word| word }.join(' ')+'.'
	end

	get '/:op/:num1/:num2' do
		case params[:op]
		when 'add'
			(params[:num1].to_i + params[:num2].to_i).to_s
		when 'subtract'
			(params[:num1].to_i - params[:num2].to_i).to_s
		when 'multiply'
			(params[:num1].to_i * params[:num2].to_i).to_s
		when 'divide'
			(params[:num1].to_i / params[:num2].to_i).to_s
		end
	end
#
end
