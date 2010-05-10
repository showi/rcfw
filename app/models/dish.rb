class Dish < ActiveRecord::Base
	acts_as_taggable
	
	has_many :dishes_menus
	has_many :menus, :through => :dishes_menus
	belongs_to :category
	
	validates_presence_of :name, :price, :category_id
	validates_uniqueness_of :name
	validates_length_of :price, :minimum => 0 
	validates_length_of :price, :maximum => 1000000
	validates_numericality_of :category_id, :only_integer => true
	validates_length_of :category_id, :minimum => 1
end
