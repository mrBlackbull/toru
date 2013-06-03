class Event < ActiveRecord::Base
	validates :date, :presence => true
 	belongs_to :group
 	attr_accessible :date, :ends_at, :info, :location, :room_number, :starts_at

end
