class ProfilesController < ApplicationController
  layout "group"
  
   def update
    @profile = Profile.find(params[:id])
    @group = @profile.group

    respond_to do |format|
      if @group.update_attributes(params[:group])
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @profile = Profile.find(params[:id])
    @group = @profile.group
  end

  def show
    @profile = Profile.find(params[:id])
    @group = @profile.group
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile }
    end
  end
end



