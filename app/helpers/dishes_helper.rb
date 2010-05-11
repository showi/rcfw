module DishesHelper

def find_subcat_dishes(id, lvl = nil)
		if lvl != nil and lvl > 0 then
			lvl = lvl - 1
		end
      logger.debug "Find dish for cat: " + id.to_s
		dishes = Dish.find(:all, :conditions => {:category_id => id})
      if lvl == nil or lvl > 0 then
			Category.find(:all, :conditions => { :parent_id => id}).each do |child|
				logger.debug child.id
				dishes = dishes + find_subcat_dishes(child.id)
      	end
		end
      return dishes
   end    

end
