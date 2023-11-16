class Product < ApplicationRecord
  def is_discounted?
    if price <= 10
      return true
    else
      return false
    end
  end

  def tax
    tax = price * 0.09
    return tax.round(2)
  end

  def total
    total = price + tax
    return total.round(2)
  end

  belongs_to :supplier
  # def supplier
  #    Supplier.find_by(id: supplier_id)
  # end
  has_many :images
  # def image
  #   Image.where(product_id: id)
  # end
  has_many :orders

  # validates :name, presence: true
  # validates :price, presence: true
  # validates :description, presence: true
  # validates :name, length: { in: 2..30 }
  # validates :name, prescence: true
  # validates :description, length: { in: 5..300 }
  # validates :price, numericality: { greater_than: 0 }
  # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "must have a valid file type", multiline: true
end
