class AddOnlyWithinMenu < ActiveRecord::Migration
  def self.up
	add_column :dishes, :onlywithmenu, :boolean  
 end

  def self.down
	remove_column :dishes, :onlywithmenu
  end
end
