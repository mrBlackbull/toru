class Post < ActiveRecord::Base
  attr_accessible :body, :posted_by, :posted_by_uid

  validates :body, :presence => true

  belongs_to :group
  has_many :comments, :dependent => :destroy

end

# has "group_id" for posts access
