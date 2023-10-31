class ChangeNametoSupplier < ActiveRecord::Migration[7.0]
  def change
    rename_column(:suppliers, :name, :f_name)
  end
end
