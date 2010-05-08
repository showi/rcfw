class Menu < ActiveRecord::Base
	has_many :dishes_menus
	has_many :dishes, :through => :dishes_menus
end
