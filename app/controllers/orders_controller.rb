class OrdersController < ApplicationController
  before_action :authenticate_user

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
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      product = Product.find_by(id: carted_product.product_id)
      product_subtotal = product.price * carted_product.quantity.to_i
      calculated_subtotal += product_subtotal
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
      render :show
      carted_products.update(
        order_id: @order.id,
        status: "purchased",
      )
    else #sad path
      render json: { errors: @order.errors.full_message }
    end
  end
end
