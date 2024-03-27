class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
  
end
