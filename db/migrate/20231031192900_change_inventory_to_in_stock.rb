class ChangeInventoryToInStock < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :inventory, :in_stock
  end
end
