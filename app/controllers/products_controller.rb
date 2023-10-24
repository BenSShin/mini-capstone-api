class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render :index
  end

  def one_product
  end
end
