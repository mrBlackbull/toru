class GroupProfile < ActiveRecord::Base
  belongs_to :group
  attr_accessible :, :, :, :group_mission, :text_block_body, :text_block_content
end
