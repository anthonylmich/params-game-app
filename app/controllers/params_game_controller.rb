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

end
