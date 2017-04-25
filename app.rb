require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
        @name = params[:name].reverse
    end

    get '/square/:number' do
        @number = params[:number].to_i
        "#{@number ** 2}"
    end

    get '/say/:number/:phrase' do
        @number = params[:number].to_i
        @phrase = params[:phrase]
        sent = []

        @number.times do
            sent << @phrase
        end
        # binding.pry
        sent.join("\n")
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        sent = params[:captures]
        sent.join(" ") + "."
    end

    get '/:operation/:number1/:number2' do
        @operation = params['operation']
        @num1 = params['number1'].to_i
        @num2 = params['number2'].to_i
        # binding.pry

        if @operation == "add"
            "#{@num1 + @num2}"
        elsif @operation == "subtract"
            "#{@num1 - @num2}"
        elsif @operation == "multiply"
            "#{@num1 * @num2}"
        elsif @operation == "divide"
            "#{@num1 / @num2}"
        end
    end





end
