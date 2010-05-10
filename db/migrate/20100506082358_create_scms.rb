class CreateScms < ActiveRecord::Migration
  def self.up
    create_table :scms do |t|
      t.column :id, :integer
      t.column :parent_id, :integer
      t.column :next_id, :integer
      t.column :prev_id, :integer
      t.column :type, :string
      t.column :data_mime_id, :integer
		t.column :title, :string
		t.column :content, :text
		t.timestamps
    end
  end

  def self.down
    drop_table :scms
  end
end
