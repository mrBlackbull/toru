class Group < ActiveRecord::Base
  attr_accessible :affiliation, :group_name, :group_type, :string

  validates :group_name, :presence => true
  has_many :posts, :dependent => :destroy
  accepts_nested_attributes_for :posts
end
