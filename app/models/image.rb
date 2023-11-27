class Image < ApplicationRecord
  belongs_to :product
  # def products
  #   Product.find_by(id: product_id)
  # end
  # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "must have a valid file type", multiline: true
end
