class GroupChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "group_chats_#{params['group_chat_id']}_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    current_user.messages.create!(body: data['message'], group_chat_id: data['group_chat_id'])
  end
end
