class ChangeInStockToString < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :in_stock, :integer
  end
end
