class Message < ActiveRecord::Base
  validates :body, presence: true, length: {minimum: 2, maximum: 1000}
  belongs_to :user
  belongs_to :group_chat

  after_create_commit { MessageBroadcastJob.perform_later(self) }

  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end
end
