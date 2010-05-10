class AddSubcategoryIdToDish < ActiveRecord::Migration
  def self.up
    add_column :dishes, :subcategory_id, :integer
  end

  def self.down
    remove_column :dishes, :subcategory_id
  end
end
