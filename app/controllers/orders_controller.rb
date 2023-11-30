class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = Order.where(user_id: current_user.id)
    render :index
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_tax + calculated_subtotal

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if @order.save #happy path
      carted_products.update(
        order_id: @order.id,
        status: "purchased",
      )
      render :show
    else #sad path
      render json: { errors: @order.errors.full_message }
    end
  end
end
