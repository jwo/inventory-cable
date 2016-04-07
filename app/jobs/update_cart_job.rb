class UpdateCartJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later

    ActionCable.server.broadcast "cart_update", { number: rand(500) }
  end
end
