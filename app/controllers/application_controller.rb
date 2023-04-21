class ApplicationController < ActionController::Base
  before_action :initialize_cart

  private

  def initialize_cart
    @cart = Cart.new(session[:cart] ||= {})
  end
end

class Cart
  def initialize(items = {})
    @items = items
  end

  def add_item(product)
    found = false
    @items.each do |id, name|
      if id == product.id
        found = true
        break
      end
    end

    if !found
      @items[product.id] = product.name
    end
  end

  def remove_item(product_id)
    @items.delete(product_id.to_s)
  end

  def items
    @items.map do |product_id, quantity|
      CartItem.new(product_id: product_id, quantity: quantity)
    end
  end

  def total_price
    items.reduce(0) { |sum, item| sum + item.product.price * item.quantity }
  end
end
