class AddTitleColumnToEquipment < ActiveRecord::Migration[6.1]
  def change
    add_column :equipments, :title, :string
    add_column :equipments, :condition, :string
    remove_column :users, :location
  end
end
