class Menu < ActiveRecord::Base
	has_many :dishes_menus
	has_many :dishes, :through => :dishes_menus

	validates_presence_of :name, :category_id, :price
	validates_uniqueness_of :name

	validates_numericality_of :category_id, :only_integer => true
	validates_length_of :category_id, :minimum => 1

end
