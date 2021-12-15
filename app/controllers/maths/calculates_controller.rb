module Maths
    class CalculatesController < ApplicationController
        def calculates
            unless has_sufficient_params(["num1","num2", "operation"])
                return
            end
            # save operation
            operation = OPERATION[params[:operation]]
            num1 = params[:num1].to_f
            num2 = params[:num2].to_f
            
            if operation == "+"
                @result = num1 + num2
            elsif operation == "-"
                @result = num1 - num2
            elsif operation == "*"
                @result = num1 * num2
            elsif operation == "/"
                @result = num1 / num2
            end
            # save operation
            # render json: {status: "SUCCESS", result: @result}, status: :ok
            render json: {result: @result.to_i}, status: :ok
        end
    end
end
