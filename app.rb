require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    @squared_number = @number.to_i * @number.to_i
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
   answer = ""
   params[:number].to_i.times do 
    answer += params[:phrase]
   end
   answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_array = [params[:word1],
    params[:word2],
    params[:word3],
    params[:word4],
    params[:word5]
  ]

  joined_string = word_array.join(" ") 
  joined_string_with_period = joined_string + "."
  end

  get '/:operation/:number1/:number2' do
    add = params[:number1].to_i + params[:number2].to_i
    output_add = add.to_s
    subtract = params[:number1].to_i - params[:number2].to_i
    output_subtract = subtract.to_s
    multiply = params[:number1].to_i * params[:number2].to_i
    output_multiply = multiply.to_s
    divide = params[:number1].to_i / params[:number2].to_i
    output_divide = divide.to_s

    if params[:operation] == "add"
      output_add
    elsif params[:operation] == "subtract"
      output_subtract
    elsif params[:operation] == "multiply"
      output_multiply
    elsif params[:operation] == "divide"
      output_divide
    end
  end


end