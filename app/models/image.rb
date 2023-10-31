class Image < ApplicationRecord
  def products
    Product.find_by(id: product_id)
  end
end
