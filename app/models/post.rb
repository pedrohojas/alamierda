class Post < ActiveRecord::Base
def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
      @post = Post.new
  end
end


  # GET /posts/1/edit
  def edit
    if (current_user != nil) && ((current_user.id==@post.user.id)||(current_user.roles_mask==1))
      @post = @post
    else
      redirect_to root_path
    end
  end

  # POST /posts
  # POST /posts.json
  def create

    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Bien!, todo bien' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'El post fue actualizado exitosamente' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'El post fue eliminado exitosamente' }
      format.json { head :no_content }
    end
  end