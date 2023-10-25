class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.create(
      name: "macaroons",
      price: 4,
      image_url: "http://google.com",
      description: "Delicaate chewy shells with caramel buttercream filling",
    )
    render :show
  end
end
