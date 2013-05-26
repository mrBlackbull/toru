class GroupProfilesController < ApplicationController
  layout "group"
  def show
    @group_profile = GroupProfile.find(params[:id])
    @group = @group_profile.group
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_profile }
    end
  end
end



