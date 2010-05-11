class MenusMenugroups < ActiveRecord::Base
	belongs_to :menu
	belongs_to :menugroup
end
