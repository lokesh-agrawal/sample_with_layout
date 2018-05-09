class RemoveColumnUsers < ActiveRecord::Migration
  def up
  	remove_column(:users, :delete)
  end

  def down
  end
end
