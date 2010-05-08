class CreateScms < ActiveRecord::Migration
  def self.up
    create_table :scms do |t|
      t.column :id, :integer
      t.column :parent, :integer
      t.column :next, :integer
      t.column :prev, :integer
      t.column :type, :string
      t.column :mime_id, :integer
			t.timestamps
    end
  end

  def self.down
    drop_table :scms
  end
end
