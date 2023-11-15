class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
    render :index
  end

  def show
    @order = Order.find_by(id: params["id"])
    if current_user.id && current_user.id == @order.user_id
      render :show
    else
      render json: { message: "You may only view your own orders." }
    end
  end

  def create
    @order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    @order.update(
      subtotal: @order.subtotal,
      tax: @order.tax,
      total: @order.total,
    )
    render :show
  end
end
