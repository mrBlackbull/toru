class Post < ActiveRecord::Base
  attr_accessible :body, :posted_by, :posted_by_uid, :post_id

  validates :body, :presence => true

  belongs_to :group

end

# has "group_id" for posts access
