class CreateMenusMenugroups < ActiveRecord::Migration
  def self.up
    create_table :menus_menugroups do |t|
      t.integer :menu_id
      t.integer :menugroup_id

      t.timestamps
    end
  end

  def self.down
    drop_table :menus_menugroups
  end
end
