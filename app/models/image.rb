class Image < ApplicationRecord
  belongs_to :product
  # def products
  #   Product.find_by(id: product_id)
  # end
end
