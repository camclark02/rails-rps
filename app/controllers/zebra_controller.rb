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
    render({ :template => "game_templates/paper_page" })
  end

  def scissors_page
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template => "game_templates/scissors_page" })
  end
end
