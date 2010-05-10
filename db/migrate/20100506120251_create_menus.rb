class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.boolean :available
      t.integer :price
		t.integer :category_id
   	t.text :comment   
		t.integer :num_person
		t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
