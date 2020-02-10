class ChatsController < ApplicationController
  before_action :set_board

  def index
    @chat = Chat.new
    @chats = @board.content
    @boards = Board.all
    @users = User.all
  end

  def create
    @chat = @board.chats.new(chat_params)
  end


  private

  def chat_params
    params.require(:chat).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_board
    @board = Board.find(params[:board_id])
  end
end
