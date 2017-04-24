class UsersChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_channel_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
