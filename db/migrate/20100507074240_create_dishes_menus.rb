class CreateDishesMenus < ActiveRecord::Migration
  def self.up
    create_table :dishes_menus do |t|
      t.integer :dish_id
      t.integer :menu_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes_menus
  end
end
