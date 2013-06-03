class Item < ActiveRecord::Base
	validates :header, :presence => true
	belongs_to :group
	attr_accessible :description, :header, :url
end
