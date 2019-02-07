class OrdersController < ApplicationController
  def index
    @orders=Order.all
  end
  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to @order, notice: 'Order was successfully created.'
  end
  def order_params
    params.require(:order).permit(:first_name, :last_name)
  end
  
end
# response = EXPRESS_GATEWAY.setup_purchase(10000,
#     ip: request.remote_ip)