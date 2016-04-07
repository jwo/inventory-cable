class ProductsController < ApplicationController

  after_action do
    UpdateCartJob.set(wait: 5.seconds).perform_later
  end

  def index
    @products = Product.order("id desc")
  end

  def show
    @product = Product.find params[:id]
  end

  def buy
    @product = Product.find params[:id]
    @product.update inventory: (@product.inventory - 1)
    InventorySyncerJob.perform_later(@product)  
  end
end
