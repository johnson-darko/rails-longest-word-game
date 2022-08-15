class GamesController < ApplicationController
  def new
    @alphabet = ('A'...'Z').to_a
    @letters = ''

    10.times do
      @letters += @alphabet.sample
    end
  end

  def score
    @word = params[:user_input]
    @letters = params[:letters]
  end
end