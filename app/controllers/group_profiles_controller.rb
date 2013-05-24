class GroupProfilesController < ApplicationController

  def profile
    @group_profile = GroupProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_profile }
    end
  end



