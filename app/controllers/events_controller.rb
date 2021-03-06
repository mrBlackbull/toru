class EventsController < ApplicationController
  layout "group" 
  before_filter :load_group


  public
  def load_group
    @group = Group.find(params[:group_id])
  end
  
  # GET /events
  # GET /events.json
  def index
    @events = @group.events.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = @group.events.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = @group.events.build
  end

  # GET /events/1/edit
  def edit
    @event = @group.events.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = @group.events.build(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to group_events_path(@group), notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = @group.events.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to group_events_path(@group), notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = @group.events.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to group_events_path(@group) }
      format.json { head :no_content }
    end
  end
end
