require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params[:name]
    "#{@reverse_name.reverse}"
  end

  get '/square/:number' do
    @square_num = params[:number].to_i ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @say_phrase = params[:phrase]
    @say_num = params[:number].to_i
    "#{@say_phrase * @say_num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @say_word1 = params[:word1]
    @say_word2 = params[:word2]
    @say_word3 = params[:word3]
    @say_word4 = params[:word4]
    @say_word5 = params[:word5]
    "#{@say_word1} #{@say_word2} #{@say_word3} #{@say_word4} #{@say_word5}."
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]

    case @operator
    when 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    when 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    when 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    when 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    end

  end
end