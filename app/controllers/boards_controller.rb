class BoardsController < ApplicationController

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(board_params)
    redirect_to root_path
  end

  def show
    binding pry
    @board = Board.find(params[:id])
  end

  private
  def board_params
    params.require(:board).permit(:title, :content)
  end
end
