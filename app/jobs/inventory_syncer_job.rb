class InventorySyncerJob < ApplicationJob
  queue_as :default

  def perform(product)
    # Do something later

    ActionCable.server.broadcast "products", {
      product: product,
      template: draw(product)
    }

  end

  def draw(product)
    ApplicationController.render(partial: 'products/product',
                                 locals: { product: product })
  end
end
