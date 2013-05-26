class ProfilesController < ApplicationController
  layout "group"
  def show
    @profile = Profile.find(params[:id])
    @group = @profile.group
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end
end



