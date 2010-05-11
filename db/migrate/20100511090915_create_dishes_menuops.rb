class CreateDishesMenuops < ActiveRecord::Migration
  def self.up
    create_table :dishes_menuops do |t|
      t.integer :dish_id
      t.integer :menuop_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes_menuops
  end
end
