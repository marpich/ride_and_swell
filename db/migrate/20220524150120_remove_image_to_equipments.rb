class RemoveImageToEquipments < ActiveRecord::Migration[6.1]
  def change
    remove_column :equipments, :image
  end
end
