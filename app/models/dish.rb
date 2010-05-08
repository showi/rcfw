class Dish < ActiveRecord::Base
	validates_presence_of :name, :price
	validates_uniqueness_of :name
	validates_length_of :price, :minimum => 0 
	validates_length_of :price, :maximum => 1000000
	has_many :dishes_menus
	has_many :menus, :through => :dishes_menus
	belongs_to :category
end
