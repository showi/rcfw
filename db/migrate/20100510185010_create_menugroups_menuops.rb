class CreateMenugroupsMenuops < ActiveRecord::Migration
  def self.up
    create_table :menugroups_menuops do |t|
      t.integer :menugroup_id
      t.integer :menuop_id
      t.timestamps
    end
  end

  def self.down
    drop_table :menugroups_menuops
  end
end
