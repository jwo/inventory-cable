class ProductsController < ApplicationController

  after_action do
    UpdateCartJob.set(wait: 5.seconds).perform_later
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end
end
