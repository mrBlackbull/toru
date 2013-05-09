class GroupProfilesController < ApplicationController
  # GET /group_profiles
  # GET /group_profiles.json
  def index
    @group_profiles = GroupProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @group_profiles }
    end
  end

  # GET /group_profiles/1
  # GET /group_profiles/1.json
  def show
    @group_profile = GroupProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @group_profile }
    end
  end

  # GET /group_profiles/new
  # GET /group_profiles/new.json
  def new
    @group_profile = GroupProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @group_profile }
    end
  end

  # GET /group_profiles/1/edit
  def edit
    @group_profile = GroupProfile.find(params[:id])
  end

  # POST /group_profiles
  # POST /group_profiles.json
  def create
    @group_profile = GroupProfile.new(params[:group_profile])

    respond_to do |format|
      if @group_profile.save
        format.html { redirect_to @group_profile, notice: 'Group profile was successfully created.' }
        format.json { render json: @group_profile, status: :created, location: @group_profile }
      else
        format.html { render action: "new" }
        format.json { render json: @group_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /group_profiles/1
  # PUT /group_profiles/1.json
  def update
    @group_profile = GroupProfile.find(params[:id])

    respond_to do |format|
      if @group_profile.update_attributes(params[:group_profile])
        format.html { redirect_to @group_profile, notice: 'Group profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @group_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_profiles/1
  # DELETE /group_profiles/1.json
  def destroy
    @group_profile = GroupProfile.find(params[:id])
    @group_profile.destroy

    respond_to do |format|
      format.html { redirect_to group_profiles_url }
      format.json { head :no_content }
    end
  end
end
