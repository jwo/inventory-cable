class ProductsController < ApplicationController
  def index
    @products = Product.all

    UpdateCartJob.set(wait: 2.seconds).perform_later
  end

  def show
    @product = Product.find params[:id]
  end
end