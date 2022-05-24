class EditColumnsEquipment < ActiveRecord::Migration[6.1]
  def change
    rename_table :equipment, :equipments
    change_column :equipments, :board_size, :float
    change_column :equipments, :sail_size, :float
    add_column :equipments, :location, :string
    remove_column :bookings, :location
  end
end
