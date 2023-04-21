class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :add_to_cart, :remove_from_cart]
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    product = Product.find(params[:id])
    @cart.add_item(product)
    redirect_to root_path
  end

  def remove_from_cart
    product = Product.find(params[:id])
    @cart.remove_item(product.id)
    redirect_to root_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end