class RemoveColumnToUsers < ActiveRecord::Migration
  def up
  	remove_column(:users, :isActive)
  end

  def down
  end
end
