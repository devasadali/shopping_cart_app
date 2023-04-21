class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :add_to_cart, :remove_from_cart]
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @cart_item = CartItem.new
    @cart_item.product = @product
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end