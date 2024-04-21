class ZebraController < ApplicationController
  def home_page
    render({ :template => "game_templates/home" })
  end

  def rock_page
    @moves = ["rock", "paper", "scissors"]

    @comp_move = @moves.sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template => "game_templates/rock_page" })
  end

  def paper_page
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end
  end
end
