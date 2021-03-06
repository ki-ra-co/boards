class BoardsController < ApplicationController

  def index
    @boards = Board.all
    @users = User.all
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(board_params)
    redirect_to boards_path
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    board = Board.find(params[:id])
    board.update(board_params)
    redirect_to boards_path
  end

  def destroy
    board = Board.find(params[:id])
    board.destroy
    redirect_to boards_path
  end

  private
  def board_params
    params.require(:board).permit(:title, :content, :user_id).merge(user_id: current_user.id)
  end
end

