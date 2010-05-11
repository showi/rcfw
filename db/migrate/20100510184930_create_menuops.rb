class CreateMenuops < ActiveRecord::Migration
  def self.up
    create_table :menuops do |t|
      t.string :operator
      t.timestamps
    end
  end

  def self.down
    drop_table :menuops
  end
end
