class DishesMenu < ActiveRecord::Base
	belongs_to :menu
	belongs_to :dish
	validates_presence_of :menu_id, :dish_id
	validates_numericality_of :menu_id, :dish_id, :only_integer => true
	validates_length_of :menu_id, :dish_id, :in => 1..100000
end
