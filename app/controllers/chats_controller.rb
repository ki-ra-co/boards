class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def create 
    @chat = @board.chats.new(chat_params)
  end
  private

  def chat_params
    params.require(:chat).permit(:content, :image).merge(user_id: current_user.id)
  end
end
