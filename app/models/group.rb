class Group < ActiveRecord::Base
  attr_accessible :affiliation, :group_name, :group_type

  validates :group_name, :presence => true
  
  has_many :posts, :dependent => :destroy

  has_one :profile, :dependent => :destroy


  
end
