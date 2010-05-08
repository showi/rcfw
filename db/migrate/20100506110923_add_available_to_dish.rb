class AddAvailableToDish < ActiveRecord::Migration
  def self.up
    add_column :dishes, :available, :boolean
  end

  def self.down
    remove_column :dishes, :available
  end
end
