class AddDeleteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :delete, :boolean, default: false
    
  end
end
