# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def find_active_dishes
		Dish.find(:all, :conditions => {:available => true})
	end
end
