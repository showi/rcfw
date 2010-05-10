# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def find_active_dishes
		Dish.find(:all, :conditions => {:available => true})
	end
	
	def find_category_by_type (type)
		cattype = Cattype.find(:first, :conditions => { :name => type})
		if not cattype 
			return 
		end
		Category.find(:all, :conditions => [ "cattype_id=? and parent_id IS NOT NULL", cattype])
	end
	
	def find_top_category_by_type(type)
		cattype = Cattype.find(:first, :conditions => { :name => type})
		if not cattype 
			return 
		end
		cattop = Category.find(:first, :conditions => { :parent_id => nil})
		Category.find(:all, :conditions => { :parent_id => cattop.id })
	end

  def isadmin
      unless current_user
         return false
      end    
      unless current_user.isadmin == true
         return false
      end    
      return true
   end    


end
