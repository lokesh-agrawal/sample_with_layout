class AddColumnToUsers2 < ActiveRecord::Migration
  def change
    add_column :users, :isActive, :boolean, default: true
  end
end
