class ItemsController < ApplicationController
  layout "group" 
  before_filter :load_group


  public
  def load_group
    @group = Group.find(params[:group_id])
  end

  # GET /items
  # GET /items.json
  def index
    @items = @group.items.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = @group.items.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    @item = @group.items.build
  end

  # GET /items/1/edit
  def edit
    @item = @group.items.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = @group.items.build(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to group_items_path(@group), notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = @group.items.find(params[:item])

    respond_to do |format|
      if @item.update_attributes(:item => params[:item])
        format.html { redirect_to group_items_path, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = @group.items.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to group_items_path(@group) }
      format.json { head :no_content }
    end
  end
end
