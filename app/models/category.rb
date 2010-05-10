class Category < ActiveRecord::Base
	acts_as_tree
	belongs_to :cattype
	has_many :dishes
  	
	validates_presence_of :name, :cattype_id, :weight
   validates_uniqueness_of :name

   validates_numericality_of :cattype_id, :only_integer => true
   validates_length_of :cattype_id, :minimum => 1
end
