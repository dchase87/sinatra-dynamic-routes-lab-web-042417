require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].to_s
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    squared = @number * @number
    "#{squared}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    array = []
    @number.times {array << @phrase}
    "#{array.join("\n")}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word_array = []
    @word_array << [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    "#{@word_array[0].join(' ')}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation].to_s
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
    when "add"
      add = @number1 + @number2
      "#{add}"
    when "subtract"
      subtract = @number1 - @number2
      "#{subtract}"
    when "multiply"
      multiply = @number1 * @number2
      "#{multiply}"
    when "divide"
      divide = @number1 / @number2
      "#{divide}"
    end
  end

end
