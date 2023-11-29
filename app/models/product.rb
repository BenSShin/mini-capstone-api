class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :carted_products
  has_many :users, through: :carted_products

  has_many :categories, through: :category_products

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

  # validates :name, presence: true
  # validates :price, presence: true
  # validates :description, presence: true
  # validates :name, length: { in: 2..30 }
  # validates :name, prescence: true
  # validates :description, length: { in: 5..300 }
  # validates :price, numericality: { greater_than: 0 }
end
