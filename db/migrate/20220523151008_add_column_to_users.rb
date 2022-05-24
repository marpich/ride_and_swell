class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :location, :string
    add_column :users, :avatar, :string
  end
end
