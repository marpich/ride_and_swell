class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :sport
      t.string :brand
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.string :image
      t.string :description
      t.integer :board_size
      t.integer :sail_size

      t.timestamps
    end
  end
end
