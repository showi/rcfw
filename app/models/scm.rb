class Scm < ActiveRecord::Base
	acts_as_tree
	validates_presence_of :title
	belongs_to :data_mime
end
