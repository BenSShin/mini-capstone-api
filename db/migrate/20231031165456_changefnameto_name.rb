class ChangefnametoName < ActiveRecord::Migration[7.0]
  def change
    rename_column :suppliers, :f_name, :name
  end
end
