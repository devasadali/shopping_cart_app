class CartsController < ApplicationController
  def show
    @cart_items = @cart.items
  end
end
