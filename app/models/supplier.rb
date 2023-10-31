class Supplier < ApplicationRecord
  has_many :products
  # def products
  #   Supplier.where(supplier_id: id)
  # end
end
