class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end
    render :index
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params["supplier_id"],
      in_stock: params["in_stock"],
    )
    render :show
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      description: params["description"] || @product.description,
      in_stock: params["in_stock"] || @product.in_stock,
      supplier_id: params["supplier_id"] || @product.supplier_id,
    )
    render :show
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy
    render json: "Product removed from database"
  end
end
