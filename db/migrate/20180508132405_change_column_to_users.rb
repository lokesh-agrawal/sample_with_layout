class ChangeColumnToUsers < ActiveRecord::Migration
  def up
  	change_column :users, :isActive, :boolean, :default => true
  end

  def down
  end
end
