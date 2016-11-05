class GroupChatsController < ApplicationController
  def index
    @group_chat = GroupChat.all
  end

  def new
    @group_chat = GroupChat.new
  end

  def create
    @group_chat = current_user.group_chat.build(group_chat_params)
    if @group_chat.save
      flash[:success] = 'Group added added!'
      redirect_to group_chats_path
    else
      render 'new'
    end
  end

  def show
    @group_chat = GroupChat.includes(:messages).find_by(id: params[:id])
    @message = Message.new
  end

  private

  def group_chat_params
    params.require(:group_chat).permit(:title)
  end
end
