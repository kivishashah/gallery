class PostsController < ApplicationController
  def create    
    @post = current_user.posts.build(post_params)   
    #binding.pry
    if @post.save
      redirect_to @post    
    else    
      render :new   
    end    
  end 
        
  def new
    @post = Post.new
  end

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @next_image = @post.next
    @prev_image = @post.prev 
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def update
    @post = Post.find(params[:id])
    
    if @post.update(post_params)
      
      redirect_to @post
    else
      render :edit
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:image,:id,:user_id)
  end  
end


