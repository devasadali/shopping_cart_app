class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    @order.total_price = CartItem.all.sum { |item| item.product.price * item.quantity }
    if @order.save
      CartItem.destroy_all
      redirect_to order_complete_order_path(@order)
    else
      render :new
    end
  end

  def order_complete
    @order = Order.find(params[:id])
  end
  
  private
  
  def order_params
    params.require(:order).permit(:name, :address, :phone, :payment_method)
  end
end
