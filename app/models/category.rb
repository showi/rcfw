class Category < ActiveRecord::Base
	acts_as_tree
	belongs_to :cattype
	has_many :dishes
	validates_presence_of :name
end
