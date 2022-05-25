class AddCoordinatesToEquipment < ActiveRecord::Migration[6.1]
  def change
    add_column :equipments, :latitude, :float
    add_column :equipments, :longitude, :float
  end
end
