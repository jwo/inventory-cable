# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class CartChannel < ApplicationCable::Channel
  def subscribed
    stream_from "cart_update"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def update
  end
end
