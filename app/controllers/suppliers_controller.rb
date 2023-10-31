class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render :index
  end

  def show
    @supplier = Supplier.find_by(id: params["id"])
    render :show
  end

  def create
    @supplier = Supplier.create(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
    )
    render :show
  end
end
