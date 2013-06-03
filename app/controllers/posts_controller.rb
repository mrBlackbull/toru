class PostsController < ApplicationController
  before_filter :load_group


  public
  def load_group
    @group = Group.find(params[:group_id])
  end
  

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = @group.posts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = @group.posts.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end


  # POST /posts
  # POST /posts.json
  def create
    @post = @group.posts.build(params[:post])


    respond_to do |format|
      if @post.save
        format.html { redirect_to group_path(@post.group), notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    group = Group.find(params[:group_id])
    post_to_delete = group.posts.find{|g| g.id == params[:id].to_i }
    post_to_delete.destroy
    respond_to do |format|
      format.html { redirect_to group_path(@group) }
      format.json { head :no_content }
    end
  end
end
