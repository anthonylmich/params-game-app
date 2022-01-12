class ParamsGameController < ApplicationController
  def name
    word = params["message"].upcase
    render json: {message: "Your name is #{word}!"}
  end

  def name_game
    word = params["message"]
    if word.first == "a"
      render json: {message: "Your name starts with the first letter of the alphabet!"}
    end
  end
  
  def number
    random_number = 36
    number = params["message"]
    number = number.to_i
    if number == random_number
      message = "you guessed right!"
    elsif number > random_number
      message = "you guessed too high"
    elsif number < random_number
      message = "you guessed too low"
    end
    render json: {message: "your guess is #{number}, " + message}
  end
  
  def sum
    number1 = params[:wildcard1]
    number2 = params[:wildcard2]
    sum = number1.to_i + number2.to_i
    render json: {message: "The sum of your two numbers is #{sum}"}
  end
  def num_game
    random_number = 36
    number = params[:wildcard1]
    number = number.to_i
    if number == random_number
      message = "you guessed right!"
    elsif number > random_number
      message = "you guessed too high"
    elsif number < random_number
      message = "you guessed too low"
    end
    render json: {message: "your guess is #{number}, " + message}
  end


  def name_game2
    word = params[:wildcard]
    if word.first == "a"
      render json: {message: "Your name starts with the first letter of the alphabet!"}
    end
  end
end
