class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )
    if @carted_product.save
      render :show
    else
      render json: { errors: @order.errors.full_message }
    end
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id)
    render :index
  end
end
